const ordersService = require('../../services/orders');

async function getAll(req, res) {
  const { page, limit, sortBy } = req.query;

  const { results, total } = await ordersService.getAll({
    page,
    limit,
    sortBy,
  });

  res.status(200).json({
    data: results,
    total,
    message: 'Get all orders successfully',
  });
}

module.exports = getAll;
