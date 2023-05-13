Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F145C77B7D
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 May 2023 16:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NqdASIDTGXzTAH782HGKOIbRg13ym/KbkYBexPNS/Gs=; b=CtQJOqOkVWBRdc
	uVzytTDHyAykyZJKjKdVdEcT9mQjEDdUOnKd2Tfha9n+c5wg7K8Mi5pzGXNwGyHYsciDRFhSGNWHP
	TKTqoCtKt10ypnUo+LAUIiU7OqVg3yWpiQikk2SdzBEgUv/CGKQMZrH/FJbWXu1RlZcPt/q3JuJvK
	Zj+9/8rZSiGQT5Zj5gRao5YMpkV8vFVGoMJp+TgTsHZy8gY8z0uqE4px06V4GZm1wWR6AjNE3rOmu
	Wzo5aNJ6OWya3lBH+Wlaf72/jp9SxHmCTquLmBDmLzlkzOiiz5xfymxh683H7uo948nTBbIxvzD3k
	0O2vGNOJ35DIkUO+uWwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxsNg-00FQAx-0q;
	Sat, 13 May 2023 16:46:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxsNe-00FQAW-1e
	for linux-rockchip@lists.infradead.org;
	Sat, 13 May 2023 16:46:03 +0000
Received: from p508fce4f.dip0.t-ipconnect.de ([80.143.206.79] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pxsNb-0000Un-KP; Sat, 13 May 2023 18:45:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, netdev@vger.kernel.org,
 anarsoul@gmail.com, alistair@alistair23.me, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, pabeni@redhat.com,
 kuba@kernel.org, edumazet@google.com, davem@davemloft.net,
 Chris Morgan <macromorgan@hotmail.com>
Subject:  Re: [PATCH 1/2] dt-bindings: net: realtek-bluetooth: Fix RTL8821CS binding
Date: Sat, 13 May 2023 18:45:58 +0200
Message-ID: <4827925.31r3eYUQgx@phil>
In-Reply-To: <20230508160811.3568213-2-macroalpha82@gmail.com>
References:  <20230508160811.3568213-1-macroalpha82@gmail.com>
 <20230508160811.3568213-2-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230513_094602_553896_0BA9A8B1 
X-CRM114-Status: GOOD (  10.03  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Am Montag, 8. Mai 2023, 18:08:10 CEST schrieb Chris Morgan:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Update the fallback string for the RTL8821CS from realtek,rtl8822cs-bt
> to realtek,rtl8723bs-bt. The difference between these two strings is
> that the 8822cs enables power saving features that the 8723bs does not,
> and in testing the 8821cs seems to have issues with these power saving
> modes enabled.
> 
> Fixes: 95ee3a93239e ("dt-bindings: net: realtek-bluetooth: Add RTL8821CS")
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Acked-by: Heiko Stuebner <heiko@sntech.de>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
