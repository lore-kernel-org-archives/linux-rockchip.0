From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 1/6] clk: Remove recursion in clk_core_{prepare,
 enable}()
Date: Tue, 05 Mar 2019 10:49:35 -0800
Message-ID: <155181177527.20095.15680753964583935841@swboyd.mtv.corp.google.com>
References: <20190305044936.22267-1-dbasehore@chromium.org>
 <20190305044936.22267-2-dbasehore@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190305044936.22267-2-dbasehore@chromium.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-kernel@vger.kernel.org
Cc: aisheng.dong@nxp.com, Derek Basehore <dbasehore@chromium.org>, heiko@sntech.de, linux-doc@vger.kernel.org, mturquette@baylibre.com, corbet@lwn.net, Stephen Boyd <sboyd@codeaurora.org>, linux-rockchip@lists.infradead.org, mchehab+samsung@kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, jbrunet@baylibre.com
List-Id: linux-rockchip.vger.kernel.org

Quoting Derek Basehore (2019-03-04 20:49:31)
> From: Stephen Boyd <sboyd@codeaurora.org>
> 
> Enabling and preparing clocks can be written quite naturally with
> recursion. We start at some point in the tree and recurse up the
> tree to find the oldest parent clk that needs to be enabled or
> prepared. Then we enable/prepare and return to the caller, going
> back to the clk we started at and enabling/preparing along the
> way. This also unroll the recursion in unprepare,disable which can
> just be done in the order of walking up the clk tree.
> 
> The problem is recursion isn't great for kernel code where we
> have a limited stack size. Furthermore, we may be calling this
> code inside clk_set_rate() which also has recursion in it, so
> we're really not looking good if we encounter a tall clk tree.
> 
> Let's create a stack instead by looping over the parent chain and
> collecting clks of interest. Then the enable/prepare becomes as
> simple as iterating over that list and calling enable.
> 
> Modified verison of https://lore.kernel.org/patchwork/patch/814369/
> -Fixed kernel warning
> -unrolled recursion in unprepare/disable too
> 
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Signed-off-by: Stephen Boyd <sboyd@codeaurora.org>
> Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> ---

From the original post:

"I have some vague fear that this may not work if a clk op is framework 
reentrant and attemps to call consumer clk APIs from within the clk ops.
If the reentrant call tries to add a clk that's already in the list then
we'll corrupt the list. Ugh."

Do we have this sort of problem here? Or are you certain that we don't
have clks that prepare or enable something that is already in the
process of being prepared or enabled?
