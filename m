Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAD5BC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 16:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9oyhXiFtOqhh7QNd6eygRBeKsF5eTUfgUI0N5D/6J7A=; b=Gvp9MqRUyTTM3g
	ygIkXJLeDMMh0nzFXKViiQVnx12wqpFiv4p1noOaT4Hc06bckNCc2bluAy1ZGlkISI6w+p9Gpfs+8
	QQYugVlbkym6xqKPkj/lfOG5GLB1ZFf0YjW2aNGfKNx0ibH3MxSJDAbrihDCka2Bws7TMl5koXTDH
	FKlMx/3QSHwtv+DkoicaOSGPw5FosBtuJk1gkZe5dhn1XZvf/uF96VePS2DS/o0BR+qNcBsQ6mFuO
	hP2SumSBGtvE8Fj39pHI1nD3BCf3rImRSDRWExuGZnvoSQxqThH7DcEFE54S7oUDQnVOeHhryZbtc
	FVi9paUyTtRs+fN61FgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncrGF-000R9u-Lw; Fri, 08 Apr 2022 16:14:59 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncrGB-000R76-F1; Fri, 08 Apr 2022 16:14:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1649434480;
 bh=M/wORagk9F6eEZAHAShAnzR7ugdTzdqnJRbwzPJoTyo=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=VLJb29bfnyWRwZGJDxu1bT/B2ePmqJodp0jdQlvJj0eFHhsdW82Ksmp4gN+L7eX7J
 kLMNTQRyKENs4HDhnplV05ti/u4lC7h/SltEO77H/V6G7MH4/8Zk3BgFzdLGmt3/RH
 6hRT6bazOsG3Oz6fvfmZGEuDvxz6t25E/Qs4H8uk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.152.139] ([217.61.152.139]) by web-mail.gmx.net
 (3c-app-gmx-bap48.server.lan [172.19.172.118]) (via HTTP); Fri, 8 Apr 2022
 18:14:40 +0200
MIME-Version: 1.0
Message-ID: <trinity-3ae2b0d1-a3f0-4c64-acb6-2fb4fa0b36b3-1649434480623@3c-app-gmx-bap48>
From: Frank Wunderlich <frank-w@public-files.de>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Aw: [PATCH v5 3/5] arm64: dts: rockchip: add rk356x dwc3 usb3 nodes
Date: Fri, 8 Apr 2022 18:14:40 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220408151237.3165046-4-pgwipeout@gmail.com>
References: <20220408151237.3165046-1-pgwipeout@gmail.com>
 <20220408151237.3165046-4-pgwipeout@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:4EazFF7mfT+8p/kITM7n4WxfCwb0CQccEauJrFW8h8EOkdz+MsWy9IZ1bTy6CTr35aOPR
 8apVvZpo5gs0BKRqH6giqH+rHXqLt/LZS0xrAsr4Sa0LSXTL+zzKqF5kfnPy4dOH07WWxeDzOYT1
 b01Oo9Lg+3aAoe1+6cv7FHWHvf1B2wBrxOi3Jg6Dz6Os80tJAQdy8RwGRsG6JCVrHobLvZGMggyg
 w8tWCMXakOiE9ZAXTNsKz1MnXvoIRwDzQO2bSZqYV6zOGJF5AbioBONlLGBd2234Debr/bARY1Yr
 4g=
X-UI-Out-Filterresults: notjunk:1;V03:K0:1XaxmLoTN6o=:FpRa9nz83qJjs46sFl81aH
 8Ior15Sk1jHzwIrb9zhM7JX0b+WT06aovGbjFONxflnVinUWax3aJkByXPuAugt7xmh0GRHH3
 tQ4ocBiMtTEF658BIqCwNLZgs5ILj6XcQbBjqq7e+TJbl/j8Rgr0sonCeMY83vqOPOSDJxilH
 ZhWuJ477vmjr+BMQxkIBxJtgs+NKxewEHXh23vyhg7Z7dwVp3NVTfrTU0jvbpXIUWmZnqztlp
 0j6mQjSf39f/yfWw3h6T1IrfXy1v8VUjNJA71T0N38qD7l/0AgZEe9zSo0NrJrMsR5588hwVt
 +/q4kBDqEIjVsnwzjBDnr6jHRyjXgTYgRsbUoFqR5bHqIyEfFJJy7CT0QX3hU7HRQm5seH/sW
 dEUYZnLu2KpUWhf5N7fc7RXXfPXB73Kd+tCTG/K5W/TN4WDtxD3Hi0y2DG8f7XoEaNkdYMmX6
 M3X2WcUXeD+wuSBt2ElC8Vm9Zp23ihKOlOEhioZxUEc79TDJtNNgiTyc9uOrIl1oo9Vie9ZL1
 bheFQnTo+Ky5qyf+3f5ozaHEikY1cAI5+U23Hc9TXpdVByngMCuwAeY9CajpRWyJU/yTFxfmh
 3OF0pjAiOPtcIHMSyzjO4vFDzihMjyhLZKAj0Dc4mo+JTqz2Pgv40UsK3mXq3Or62fTUmy8/L
 grYrpDcKVSn+H0JQbGixbutKLsSZ/j+QSElTvfhWzOyt/IX/RdVvqfanVI+IyXr6F4ZEjHkqE
 7STOO2eOxHz3UDhbB/R6jjVp5i82Elr/UbugBDNaoQ9BFRCtZVu2a/jfIAiDlmITaICkHSLj0
 03gu+ZW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_091456_060924_F37A55B6 
X-CRM114-Status: UNSURE (   5.93  )
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

Hi

seems like usb (2+3) is broken in 5.18-rc1

i see controllers, ports are powered, but no device detection.

maybe anyone else have same behaviour with different board?

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
