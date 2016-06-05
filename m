From: Shuyu Wei <wsy2220@gmail.com>
Subject: Re: [PATCH v2] ethernet:arc: Fix racing of TX ring buffer
Date: Sun, 5 Jun 2016 22:02:59 +0800
Message-ID: <20160605140259.GA19512@debian-dorm>
References: <20160520003145.GA22420@electric-eye.fr.zoreil.com>
 <20160521160910.GA14945@debian-dorm>
 <5740E82F.8040903@gmx.de>
 <20160522091742.GA8681@debian-dorm>
 <57419853.9050701@gmx.de>
 <20160522223659.GB5086@electric-eye.fr.zoreil.com>
 <5743A9DD.8010202@gmx.de>
 <5744EA24.7060806@gmx.de>
 <20160528064348.GA19649@debian-dorm>
 <574CB382.7030102@gmx.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <netdev-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <574CB382.7030102@gmx.de>
Sender: netdev-owner@vger.kernel.org
To: Lino Sanfilippo <LinoSanfilippo@gmx.de>
Cc: Francois Romieu <romieu@fr.zoreil.com>, David Miller <davem@davemloft.net>, wxt@rock-chips.com, heiko@sntech.de, linux-rockchip@lists.infradead.org, netdev@vger.kernel.org, al.kochet@gmail.com
List-Id: linux-rockchip.vger.kernel.org

On Mon, May 30, 2016 at 11:41:22PM +0200, Lino Sanfilippo wrote:
> 
> Did you see the same issues with the patch before (the one that, as you wrote,
> survived a whole night of stress testing)?
> 
> Lino

Hi Lino,
Sorry for my late reply. I retested the previous patch, it did have
the same issue. However it seems that the possibility of stuck is lower
(just my instinct, no evidence).
