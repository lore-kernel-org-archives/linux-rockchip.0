Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C5A6C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Apr 2022 19:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s3U6QaPq5+E2fUTHZAVCDC6SDnZGVEO20eukDsjVaXQ=; b=n0Mf0PYCpXlC5V
	3/OfORrj6UXqRh9PpqIf3aYMzB/8YaYP3RhUj+/mcyQueKFEu1fnGMXJ8eS8fHcIBKuw9hO0/vCKa
	EGJWDT27iAAxYllXPWZG4p9C5ENr9z9NN8GrLAsqx0JdJMraBwpr8GCG6sFQ3J1xaioDsPJ8eE0rR
	SYcdjELX97i+foSj0rhkqPdyQeiOSunbccG91zMWLjmcv6Y2VuQYVjxUhGkfgMx5RBanwBQ9nS310
	svx6QWMs9AAzWG+EEy0yqQAJ2R3NiZEq/EBzZHEcKjbctOuotFLPjWUk6yZzNRJBUDmbDXDv+NtUT
	ZGSFJV265K5JATSV92Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndd7M-005LFR-WF; Sun, 10 Apr 2022 19:21:01 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndd7J-005LEw-M1
 for linux-rockchip@lists.infradead.org; Sun, 10 Apr 2022 19:20:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1649618436;
 bh=Um2CyqQauVqupQHiyn/GAWvh9ii4MDarJZuw1tAtqek=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=VOZ5ehyj24L/Zfm6o/cOTxIiDpp2nra2nXckq7zqXFpUtoT2Ab6+jyYK+IUBQIGzV
 mqsyhI0FyAoWINfI6UApn1/kzzs8REuc4eqk6esWAj/D1aIeWR/huWFP0Y0pROVc4v
 Bb3wuez9OV+TlQ1DamScAlKLpwIkG3gN8ILFHUZQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.146.192] ([217.61.146.192]) by web-mail.gmx.net
 (3c-app-gmx-bap63.server.lan [172.19.172.133]) (via HTTP); Sun, 10 Apr 2022
 21:20:36 +0200
MIME-Version: 1.0
Message-ID: <trinity-4dcbfdf3-ae12-4d36-ac7a-8df929478eb0-1649618436606@3c-app-gmx-bap63>
From: Frank Wunderlich <frank-w@public-files.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Felipe Balbi <balbi@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Robert Hancock <robert.hancock@calian.com>,
 Sean Anderson <sean.anderson@seco.com>, Peter Geis <pgwipeout@gmail.com>,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Aw: Re: [PATCH] usb: dwc3: fix backwards compat with rockchip devices
Date: Sun, 10 Apr 2022 21:20:36 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <12992587.uLZWGnKmhe@phil>
References: <20220409152116.3834354-1-pgwipeout@gmail.com>
 <12992587.uLZWGnKmhe@phil>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:l7bLbLxORt8ivEQrcCx7kspHK4Lr3Iaz1Zn4/S09eTzu7DNQR8Ni/GY0dy0rV7EQgBXFo
 L7V6/RkMNe5Tw79nSyuXw6axT9XtK1amrOGm5enTJ1Sn7fXFmhhVQLPpP9yuxUzC7f8TFJflXL6S
 /KC4YxbZN0DUSN7RlvKRXiXBlgZXiMhb5wpxzIhYjFY8mDXMcwKeTbhHgCeiE9hfiyi0G9D98NOD
 DKzokDlKl8oIJf2LdT/JgPkU+Oo28ikB3xAbGsgDH4PVp2A+cUrNqALmY9a+5gbJrMLLzbIRVE7b
 4g=
X-UI-Out-Filterresults: notjunk:1;V03:K0:edowQyZyc/Y=:2USGISP2Y2Je8pHsFl49RB
 dFI5CulvvgJZZdvDJ5xzGi7WCL9gipAOXphqUoqkABkSa1eztAYvDt0OOhFGbHJ6Xs9+tMqo9
 g3qnBLywoVMUZss5x42MBr+EyJM+oelMpNmw25ncTxNaesW9NuaY/l1KEIrrxNcH4oLtnguef
 VceEJ3apQu+NAXlvfMzgm3NOn5BZBaBMK44YPTlCa7wb4UK8eN1j0Z/QDEprRUBr1Q2vVFIXp
 UmYFi+YsJOZU2bHc9Fs3uwAK3pFDgGmBfqZSj+oJE56m9RMG90wJLq20L0AJ/qts4nJrfh7UL
 Z9bdoHnm5TvEABLni9HebsaELy1b4bhXZyNoD9a/oXbXORwUFE+SOmarQFpwbVRLoCeRFP6Yv
 7dgYIonARRlQ4eqOzsUJ01x9cL15ACGh6sdO1U4uMpWtxLgGsQ3lv3/cEx+Axe19JOAFuc/7G
 YwJkr5o5+zOvsbrfcw2rkVYb9qUWrvkQgZvt+3yJJIv/fO7/EmP+wlDBUbFNtFKq41/PERSUY
 nQDkqD02C61+vxL7S0wAUWWVkoRMpcshAzpcoulyds17wm47jvRfVjeRqZfjojlfQAw3Qab8H
 rO8ByYBlRRN2WiC2JJcidVhBB3jmCE+suVmZgncLl4XOhMAno9YVIjiHGcN4nePhHLjYp6Fc4
 h9u43TR9LCo67Cj4afeWCE6l9u+idYLuEk1nuAqyPXUp5GAyv6cC8QKUm9mqCuetWD1u5cozQ
 laBlPzwiHGuorjjnOjFzG2Ni+UlOWClsAre+aY7b70mkdzFDHKZdD90s6pa6rW+PkKSeVWFNk
 Lry/3Oj
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220410_122058_212573_45113F6D 
X-CRM114-Status: UNSURE (   4.68  )
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

Tested on rk3568 Bpi-R2 Pro V1.0 with RK356x USB-Support [1] and BPI-R2-Pro USB Support [2]

Tested-By: Frank Wunderlich <frank-w@public-files.de>

regards Frank

[1] https://patchwork.kernel.org/project/linux-rockchip/list/?series=630470
[2] https://patchwork.kernel.org/project/linux-rockchip/list/?series=630686

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
