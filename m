From: Shuyu Wei <wsy2220@gmail.com>
Subject: Re: [PATCH] ethernet:arc: Fix racing of TX ring buffer
Date: Sun, 15 May 2016 07:24:01 +0800
Message-ID: <20160514232401.GB2968@debian-dorm>
References: <20160514161602.GA3347@debian-dorm>
 <20160514200356.GA14105@electric-eye.fr.zoreil.com>
 <20160514231044.GA2968@debian-dorm>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <netdev-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20160514231044.GA2968@debian-dorm>
Sender: netdev-owner@vger.kernel.org
To: Francois Romieu <romieu@fr.zoreil.com>
Cc: wxt@rock-chips.com, davem@davemloft.net, heiko@sntech.de, linux-rockchip@lists.infradead.org, netdev@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Sorry, the last two lines is wrong, ignore it.

I mean I intended to ignore one or two packets.
It's just a trade-off for performance, but it
doesn't cause any memory leak.
