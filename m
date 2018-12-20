From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 0/6] Coordinated Clks
Date: Thu, 20 Dec 2018 13:15:41 -0800
Message-ID: <154534054131.79149.12015186156265337224@swboyd.mtv.corp.google.com>
References: <20181024013132.115907-1-dbasehore@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20181024013132.115907-1-dbasehore@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-doc@vger.kernel.org, mturquette@baylibre.com, heiko@sntech.de, aisheng.dong@nxp.com, mchehab+samsung@kernel.org, corbet@lwn.net, Derek Basehore <dbasehore@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Quoting Derek Basehore (2018-10-23 18:31:26)
> Here's the first set of patches that I'm working on for the Common
> Clk Framework. Part of this patch series adds a new clk op,
> pre_rate_req. This is designed to replace the clk notifier approach
> that many clk drivers use right now to setup alt parents or temporary
> dividers. This should allow for the removal of the
> CLK_RECALC_NEW_RATES flag and the implementation of a better locking
> scheme for the prepare lock.

Are you going to resend this series? I can do a review but I wonder how
much it will change anyway.
