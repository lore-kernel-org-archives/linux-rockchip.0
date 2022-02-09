Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB167C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 20:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BVbZ2OnhYHbJgpLJirkq177+0jm9JDhBBYTktDeSic=; b=WQYPmhHSASaKMZ
	EezGBxX/TFZJSZf4oG8EZhD77LVCuUApOwqaS3Z6Sxp53ao3pTGUg0nS/VBn/FX2Ai4ZUcdeVSLqW
	ZCbdKC56TfhJuN1mt+bAyxUD6oIHYIgUjEeBbe2TOHqK5C6lzvnrgU/8amPCmMlpUTQPBDQoYlu5K
	Cnj/82GlTPfevsUjqIjNAbOvOJtKhzkDZkaB8rDBDHasLHV/6FR6Kazpd1EcAW/R8H//f5KcNRxo9
	hJ6ScQBoyPDp94xGIBseeEdKBkrBDWa3XTdZutZrhdNU1UIxvrSc2L4pAyxzLLkU2/35TdbtZR4Ht
	gTv9wQxpgl+EsyGgXSAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHtM1-001Vn6-1N; Wed, 09 Feb 2022 20:14:17 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHtLp-001Vle-Kl; Wed, 09 Feb 2022 20:14:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1644437618;
 bh=bZbERGS5dPadQqxAada0Qnetp5usNMkkZudsQMtwL34=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=f+OJbW3aG6qLnrt4HlkF3NjI9sJzl8ZD53rnRKfmGP+UW6oPPYfb4XDu/7CsoJDXt
 5jTNUv6MkU/HaErg7CSGTAL1Tli894NaqsqBPotM5jOJQxvlXwKop8WC561bExQ1Lv
 mZbxCKhqEE3XA41wJlG7pzkMmcXxzNU2cWbyPsec=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.77.2] ([80.245.77.2]) by web-mail.gmx.net
 (3c-app-gmx-bs62.server.lan [172.19.170.146]) (via HTTP); Wed, 9 Feb 2022
 21:13:37 +0100
MIME-Version: 1.0
Message-ID: <trinity-64a1ce60-e8ac-49d8-abe4-91b0f692c13a-1644437617960@3c-app-gmx-bs62>
From: Frank Wunderlich <frank-w@public-files.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>, Benjamin
 Gaignard <benjamin.gaignard@collabora.com>, Michael Riesch
 <michael.riesch@wolfvision.net>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Peter Geis
 <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: Aw: [PATCH v5 22/23] drm: rockchip: Add VOP2 driver
Date: Wed, 9 Feb 2022 21:13:37 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220209095350.2104049-23-s.hauer@pengutronix.de>
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
 <20220209095350.2104049-23-s.hauer@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:+cdMhHjrAZgXlErp4/YCapKkUq88eAKp7+SpVwHUzYYxiDZV0aCZIj0Iq4wyffX2za42C
 X7wbT7KqRHUBBIDtlBZOCVITl8H1GLpJ1G2z7vpLR4+xKYraBYWeedHKURcmM5CnzwEm97ZeAvyw
 BaAbGtHVp4AuKoqT/iffHIU3sSLVP+i4TitnwQWh/scEySediIZUYE/H5IGg7bOeGdDtIXFnlIBc
 Ju1mRlPHeWtbBVJ8aOTbJx2P5mzOJVf9AreRacKKpFUWykZvqBwzPkODEeJX/oBtlvWnDBU8o6k8
 3A=
X-UI-Out-Filterresults: notjunk:1;V03:K0:WyPrspXp5mA=:1LHepIGjQQbIeW1suIQrkh
 StvHJZFf9qNeOITqhlLGNcWH/4If8vxrxxbyWgL7AfMHPGaskBW0ETYlphfmhRr9HNpCcpQbK
 yNstknDUzdGdApzx92sVHEv+Km5P+4lPc15GpEu0SsNOnWR4Vgi9ySvL0SEYlTjBjWUFz/JzY
 enXErHvS/fkuNxX187mTiLNkPj+rWgPP57sU0qtptsxl0lFl6OVvdzE9hRmBaS+tJbQTSlgBR
 J2hdYhSYOuOdQep4DAK6P6zqpdMJoXoWc3AJ/Wo+Kme9wVaBqfu57TkvEvOPTVKuz6myMBir6
 A2F8S2QlfDiQwT01/gVpuhwWseOyNmJF7hlr09HVzXavBACguPomZBlnq+2VnVtt5hDNGNRYX
 loIAJmikNaIrvlWPweOSCdFMhB+T4Pg3iYuLMv+e+VWT3/1KJl/joH0w/wuf+eTlp4flb5X/d
 ANikT9tJPngpUKw5O+9cr0lCqKp0Oay5Q5/E86T7XcQCh30lI5R88RCMTz84cZNNvRKW/UYEa
 K+/9O/5aDFQNolPBs1XrNC+IRlc8EWJzMYvvKx5CsrRDH5awEFXW6J9zlSwXcFR3LD3TZvlhI
 p289T8lAlqs11pheEmOzgj/9N4R3NmWU5sWUqhT9J1VyuGBc6JR7yHqnedf7lL03iAWnkAOaS
 HWW4Xafxp5BUxzmWvhLI4Cw3kWPLhsC/aabAXUFqc1hC0HZRpYP/WzYuDSXblchuJzvSE6EWS
 vCJeyedaWKhJFs+3D5/dTH/lz0gCQrrJhI1Z3CksnpTWtMTVDuNoAlrEp/RkwgzfAMa1bW32G
 PWU0SSt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_121406_043334_3AF7D33D 
X-CRM114-Status: UNSURE (   6.27  )
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
