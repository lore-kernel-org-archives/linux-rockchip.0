Return-Path: <SRS0=Ii8/=IT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DE19C433DB
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Mar 2021 20:15:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8291461944
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Mar 2021 20:15:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8291461944
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Appd88eP2uaFoeLO9689gmvBuGLMAsOs1dM4OWX2B9A=; b=Y0qA337YyAK7EM2tR8Npj1vPN
	ry0dsFMAyqWke7bVpkJbRXzFYzMfTozqNUyLmOolwMPjR7Z7zyDlBAfhfs+lzULG8ETRnnIANlu/C
	g4oPNRHOg2rhQMfRFw/7+obh3XTIlOKQToIdmTVfGAItQP0R9VSt5tl+JvqoilpAFIJDGtCj4s/SM
	NSZ3rvQw0hUVC6NLZJBqzlK34J9LOo8cbClWWdksb5GBlkUOGxFzTFTzVf8MMu2JYnlrbnqh6dao6
	XVYIn6Il7cAUs5Q24YfScPBvx03RZVz3HD79sg/nGgJn/T4dTCYLnBu839OOLD/FbXZ9eV/Wrv6yf
	bJDODF98w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lO4Tr-00AKtc-Ld; Sun, 21 Mar 2021 20:15:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lO4TF-00AKn8-5H; Sun, 21 Mar 2021 20:14:47 +0000
Received: from p508fc3a3.dip0.t-ipconnect.de ([80.143.195.163]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lO4T8-0007Oi-VT; Sun, 21 Mar 2021 21:14:39 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: sboyd@kernel.org, Elaine Zhang <zhangqing@rock-chips.com>,
 robh+dt@kernel.org, mturquette@baylibre.com
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 huangtao@rock-chips.com, kever.yang@rock-chips.com,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, cl@rock-chips.com,
 tony.xie@rock-chips.com, finley.xiao@rock-chips.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 0/4] clk: rockchip: add clock controller for rk3568
Date: Sun, 21 Mar 2021 21:14:35 +0100
Message-Id: <161635763247.767241.10092028864316275030.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210315085608.16010-1-zhangqing@rock-chips.com>
References: <20210315085608.16010-1-zhangqing@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_201445_501592_C6831D70 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 15 Mar 2021 16:56:04 +0800, Elaine Zhang wrote:
> Add the clock tree definition for the new rk3568 SoC.
> 
> Change in V5:
> [PATCH v5 1/4]: No change.
> [PATCH v5 2/4]: No change.
> [PATCH v5 3/4]: fix up the warning:
> 		>> drivers/clk/rockchip/clk-rk3188.c:187:67: warning:
> 		>> missing braces around initializer [-Wmissing-braces]
> 		187 | static const struct rockchip_cpuclk_reg_data
> 		rk3188_cpuclk_data = {
> [PATCH v5 4/4]: No change.
> 
> [...]

Applied, thanks!

[1/4] dt-binding: clock: Document rockchip, rk3568-cru bindings
      commit: 0cd74eec54a3ec34416bab6cc640a88230472078
[2/4] clk: rockchip: add dt-binding header for rk3568
      commit: 0865517926660309b796bd9bd5ba6671704733bc
[3/4] clk: rockchip: support more core div setting
      commit: a3561e77cf3ca0937227ba13744d84fc46e5eb4b
[4/4] clk: rockchip: add clock controller for rk3568
      commit: cf911d89c4c5e225a2a2cfadf1364838154b2202

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
