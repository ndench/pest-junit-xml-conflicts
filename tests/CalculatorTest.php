<?php

declare(strict_types=1);

use App\Calculator;

it('adds', function (): void {
    expect(Calculator::add(1, 2))->toBe(3);
});

it('subtracts', function (): void {
    expect(Calculator::subtract(2, 1))->toBe(1);
});
