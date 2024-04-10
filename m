Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F806CD11C2
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 05:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YR6VR08tUwGeix1OVbyG+qdZvsTIS/1OWKzFRG/xFxI=; b=wIU3DaTEFer2Kn
	mP7JeT17ous5OGs2vP6VUMQ1auFvJJqBWoKc+LzJzA+sfg5wxKb1Zer03RPdu/eCy5/Tg+0BXIT5Z
	L+USFZU68EMr9bns1Otj3novKyDhut/TZwBenvGdFT2Ng3nOXiJtiJOg+4mQnZEOAF3cAo8z/mirV
	nS8TPw+vasBfbclNts7iBdlp8e6zN1RBEXle9VlLha/h93kOzk5WYUzWWD5AAqYVaJnD+mV/5nMKb
	R39ppHec7p+U+AqYCvz5YmW4CU9GDjtoprfmtT9/Pd2zEj3Cx2iXW9ZlMAOu9q9AiM2quqiY9Yn9G
	HAM9p7al59VmuIWG+NDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruQJ3-000000058zP-1U2M;
	Wed, 10 Apr 2024 05:15:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruQIp-000000058oJ-3FiU;
	Wed, 10 Apr 2024 05:15:20 +0000
Received: from ip-185-104-138-50.ptr.icomera.net ([185.104.138.50] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruQIj-0008Ut-Kq; Wed, 10 Apr 2024 07:15:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	efectn@6tel.net
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	robh+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	sebastian.reichel@collabora.com,
	Muhammed Efe Cetin <efectn@protonmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: mark system power controller and fix typo on orangepi-5-plus
Date: Wed, 10 Apr 2024 07:15:02 +0200
Message-Id: <171272604790.1867483.16170217183416866311.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240407173210.372585-1-efectn@6tel.net>
References: <20240407173210.372585-1-efectn@6tel.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_221519_849259_668D785B 
X-CRM114-Status: UNSURE (   8.75  )
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

On Sun, 7 Apr 2024 20:32:10 +0300, efectn@6tel.net wrote:
> From: Muhammed Efe Cetin <efectn@protonmail.com>
> 
> Mark the PMIC as system power controller, so the board will shut-down
> properly and fix the typo on rk806_dvs1_null pins property.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: mark system power controller and fix typo on orangepi-5-plus
      commit: 08cd20bdecd9cfde5c1aec6146fa22ca753efea1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
