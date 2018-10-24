From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 1/6] clk: Remove recursion in clk_core_{prepare,enable}()
Date: Wed, 24 Oct 2018 06:07:53 -0700
Message-ID: <154038647375.53599.631725372765617195@swboyd.mtv.corp.google.com>
References: <20181024013132.115907-1-dbasehore@chromium.org>
 <20181024013132.115907-2-dbasehore@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20181024013132.115907-2-dbasehore@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-doc@vger.kernel.org, mturquette@baylibre.com, heiko@sntech.de, aisheng.dong@nxp.com, mchehab+samsung@kernel.org, corbet@lwn.net, Stephen Boyd <sboyd@codeaurora.org>, Jerome Brunet <jbrunet@baylibre.com>, Derek Basehore <dbasehore@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Quoting Derek Basehore (2018-10-23 18:31:27)
> From: Stephen Boyd <sboyd@codeaurora.org>
> =

> Enabling and preparing clocks can be written quite naturally with
> recursion. We start at some point in the tree and recurse up the
> tree to find the oldest parent clk that needs to be enabled or
> prepared. Then we enable/prepare and return to the caller, going
> back to the clk we started at and enabling/preparing along the
> way.
> =

> The problem is recursion isn't great for kernel code where we
> have a limited stack size. Furthermore, we may be calling this
> code inside clk_set_rate() which also has recursion in it, so
> we're really not looking good if we encounter a tall clk tree.
> =

> Let's create a stack instead by looping over the parent chain and
> collecting clks of interest. Then the enable/prepare becomes as
> simple as iterating over that list and calling enable.
> =

> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Signed-off-by: Stephen Boyd <sboyd@codeaurora.org>
> Signed-off-by: Derek Basehore <dbasehore@chromium.org>

Did you change anything substantially? Or is it just a resend of my
patch from a while ago? If you can add a link to the original and also
describe what changed in a maintainer tag it would be much easier for me
to compare.
