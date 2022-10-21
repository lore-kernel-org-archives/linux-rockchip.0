Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1E7DC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Oct 2022 19:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F2tqQsP9K+V2IYdYul/m5W34TdizRsyjuJexQofPPoQ=; b=TYm56wks0lwiIm
	vRjrynnVLqNv05tBFGFzQlGUfU5iexfsbr8a/aZBxhYD6G71uffboPQCAB7pgYCQXHEHO9DBzzQyj
	oXnBwFrTgUR7so7ZW9OpYHekQmoYa56C+XT11OW0Pj/6TshKBJLKgVfPRLOj9rPFzd296BaCjtAoZ
	y3VN5Ig1MpfW79tPLb9am+2/MhNxZ/dUZDdjNZ2OKSJt6Vowv77T6Izq1cEymxZFWtBB5tdVehbh5
	yUd4oai+uhPc4HmQYrFKBSGvDqt3WE1YZE+nYcT5KB9WcsESaGtZs+PmRU6S1ikWAVbQXiysdL9Q7
	nfSU1X7wXJaBiZ+FUVdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olxQl-009XTy-Hm; Fri, 21 Oct 2022 19:11:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olxQi-009XSr-Jc; Fri, 21 Oct 2022 19:11:41 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1olxQg-0008IK-Qf; Fri, 21 Oct 2022 21:11:38 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH 1/1] dt-bindings: power: rockchip: Increase pm_qos number
Date: Fri, 21 Oct 2022 21:11:38 +0200
Message-ID: <1834767.tdWV9SEqCh@diego>
In-Reply-To: <20221021171405.86509-1-sebastian.reichel@collabora.com>
References: <20221021171405.86509-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_121140_666501_DB81DBC8 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
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

Am Freitag, 21. Oktober 2022, 19:14:05 CEST schrieb Sebastian Reichel:
> On RK3588 some power domains require multiple qos blocks to be
> saved. The maximum required number for RK3588 is 8 (for VDPU).
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Acked-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
