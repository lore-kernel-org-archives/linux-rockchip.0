Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50810C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 17:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BVbZ2OnhYHbJgpLJirkq177+0jm9JDhBBYTktDeSic=; b=dpUMBbp4WAi0e1
	k3IxDNEWVvVSVsKbw+GI1N0O2v5HRnpKLWmrP+oUqq9962XeGWRcB++6UI6HbcyjcMTeobj9KbMB6
	rTwa9EXm0uEQziZRsqSxQUI3ct6HJDJrOWOWlkSMzpytmCpey3XLMKWl0Qk5B79E+I2hjWyZGvLQR
	U9rLTBVwpx2CF4b8onXloeRuG6MUAOLfztL/1bn1nhxalJR9Wesqzcqih+oITD4olvcm9HqLo/jJ3
	hlZ8+q2JkZedWJh3REXvLYPDf60LRJXUegFDxHOw6vfX+lxsoAFXehOdDTKh+7x8OTwzgXGJy9N7s
	SBPcS6TSWMIIuFVqQOGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHr1M-000zAA-Be; Wed, 09 Feb 2022 17:44:48 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHr1A-000z6k-Bm; Wed, 09 Feb 2022 17:44:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1644428653;
 bh=bZbERGS5dPadQqxAada0Qnetp5usNMkkZudsQMtwL34=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=M8s7o/ezuEBY8ByPlPJGeGa5rcj6oADEZinZIUugQJjhr0doSPQTl0tKd3ve1W+z+
 7xD38ORt7xSwxL+AIgFOB3w0o3FxGSHwKwEnHMz04Ftq9iJFyHAV3vDxLJ08/hT30+
 BFZzyb5m2qYaBChVvSL1mYrKYQJ7haCiRjN4aN3Q=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.77.2] ([80.245.77.2]) by web-mail.gmx.net
 (3c-app-gmx-bs62.server.lan [172.19.170.146]) (via HTTP); Wed, 9 Feb 2022
 18:44:13 +0100
MIME-Version: 1.0
Message-ID: <trinity-0fd51fc6-00ab-402e-871a-71d3356623cb-1644428653437@3c-app-gmx-bs62>
From: Frank Wunderlich <frank-w@public-files.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>, Benjamin
 Gaignard <benjamin.gaignard@collabora.com>, Michael Riesch
 <michael.riesch@wolfvision.net>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Peter Geis
 <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: Aw: [PATCH v5 00/23] drm/rockchip: RK356x VOP2 support
Date: Wed, 9 Feb 2022 18:44:13 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220209095350.2104049-1-s.hauer@pengutronix.de>
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:Kt6uAoUQy9KUxXYBKRna2pPwbagv75n8tB/ygcLmTad0OxyWH9GjeOrVm0AWTeIbrbqIq
 Tm1s3jWc+KpbC6iwreK7KtjQNxoO4BOa0lbhoSv8XGtsEHshbXteWUQGpRXothSDjShyy1mXnZBT
 hT1852znFykmSoCSO1QIUeC0etGbz2nof3MmQSE8+d+mbiy3hkxqwVpE8lxhW/CeeQ9jM94aYIZ/
 oB7m9mFSP+Xnau4l7gLNvr5ybM0twlYFQNn71AWtH7j6JytJyppXurHMP5yW0oI9M3x0OYm/V0av
 b8=
X-UI-Out-Filterresults: notjunk:1;V03:K0:HHIopXo7vDg=:qsqesGaC0wEfoA43XimtxE
 6bBs4dsAzxa4W4Aral8BmHTwxTpGZrvMM0RsC58nRqVGnyoWjgLTAMgl+mJMECV8hD7XSt3Wd
 NkpqxZNfbqiHDHOMjWM8tC8/FAfozuGL4OsxAv69cHZSUDsO/LnlQSlF/T2F90oMqxQ9DHEDw
 CcgMGfxB3Us4iUDFoB13jkz0s/s2VqLUE5H0KUd5357KuBWb2xoNwWltZqsLceU1kubro9NOi
 HNooovDdZ5H6xuJOPZ/G57jYxJ+hNY/RUJG4Ojg4Sha+fjPVY31Xlle3AQGp7QEJtqXtC8NFk
 PriywlgvZ0XB01f7LqQheJKs3NyEvZY5oVMeD0mTl+//ben+eyBChSkv/a5elOT8+iINOo9oI
 4hUyOEFEDfNk9RdLtmcxD63/zCwksIvu+lb4g4etzsj1PMNKzWqEC00yTAufw2KqzVCbcwX0k
 9O5IWXBzbm+hlxRis4do6Fd7fuCeiL8PZng8lD2aDtovpGTiN6366QLXAkhV69qS/PmTL4GLF
 Jp3DMJhvk2Pasdzbnp+GDNsVmc7oHYDsvpsFtFYWjMhqcAqhf2/2tNt1NWSLyZdzRfgOwDBpZ
 zpmxOJSHUZ5NzTycvzhAlyuU9SPd6yNb8hpTCcCitysOQ5hGLSisu4nJKmakqKWwwU+RMjGai
 UTyv9j9CKaf04bn9io2NmrSvpYdfn+zlRI2PXREz1TrGKl1qBYWOpDAO+7Ni/vf3zJsfQ7Ih/
 Nll1B2u7F+fXNlSGS7FQxbvIFL8Z+d/4oDE/klBv3Ln29FTyBmlmak/tDZ1oVPHnHZEAGKRp2
 T0vp6Nw
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_094436_754197_58CB15A5 
X-CRM114-Status: UNSURE (   5.43  )
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

Hi Sascha

tested full v5 Series + 3 clk-Patches from v4 on 5.17-rc2 on my rk3568 based Bananapi R2 Pro

1280x720-32@60Hz
1920x1080-32@60Hz
3840x2160-32@60Hz

with fb console

Tested-by: Frank Wunderlich <frank-w@public-files.de>

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
