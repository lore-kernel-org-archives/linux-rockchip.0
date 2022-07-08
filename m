Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 983E1C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jul 2022 15:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CSLjmz/P8Lc1/v7shBqjCsUKlC9406ESCBiLR5tm8kw=; b=Ce2diVlbWcVNY5
	mcaFS9BTecc/GiCJ+nEWZv0K5MeMgnK3lS/XysLDCHKj2ly4HU8+1XY+Oq8Y+rX35u50YvBiMQX75
	V2CCAaeh/A0uULzxQlBDz8tlQ5Pg0l8zwBKJrWdpujHFCYGC9WbhVpcHggzatatSvqtSQ8RnB+84Q
	//IOeR9M8+8nff0xKFzA1apcPeQH+wfD8CJxY16FtlVaEaX7/R0XNWh2AEjEriUv+Qy9MuKYO9CAC
	DyFqQPn8ngdRKfijiSSbehxkYE13+5HBfJfsFghc2RtjTr/CnPKlf/1habtLqW7AQdT8YTV5PYXov
	h6/eY7F1QBLxXs3VVpLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9q8V-004Qk2-B9; Fri, 08 Jul 2022 15:43:19 +0000
Received: from mout.gmx.net ([212.227.17.22])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9q8S-004QhY-Hh; Fri, 08 Jul 2022 15:43:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1657294976;
	bh=LxjBud0pbj6Z4Eq/r+3/joMtPqsu/Mjab1CevPT32tc=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=AbOcPy0Dhc7Ur2U+z5DgjDcxZfEyRCqOq1m8/rbekBNgJ46L8zbEvLwUljmPRKgHo
	 DpYzrqQvTWTADKnbUkfP1OCUz1NFOMe3/1IKZbgnW9S+elC01HsqEJbJnCihQ0D+Oc
	 xdv5abBKjxBMqrMFHzzDxm/UMzJGwjw7l2K/oPzY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [157.180.225.69] ([157.180.225.69]) by web-mail.gmx.net
 (3c-app-gmx-bs34.server.lan [172.19.170.86]) (via HTTP); Fri, 8 Jul 2022
 17:42:56 +0200
MIME-Version: 1.0
Message-ID: <trinity-1229008e-eed9-46b9-aabf-50e771a91c77-1657294976401@3c-app-gmx-bs34>
From: Frank Wunderlich <frank-w@public-files.de>
To: Frank Wunderlich <linux@fw-web.de>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Alessandro Zummo <a.zummo@towertech.it>, Alexandre
 Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rtc@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: Aw: [PATCH 1/2] rtc: hym8563: try multiple times to init device
Date: Fri, 8 Jul 2022 17:42:56 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220608161150.58919-2-linux@fw-web.de>
References: <20220608161150.58919-1-linux@fw-web.de>
 <20220608161150.58919-2-linux@fw-web.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:eYEslrPQul6J44xzmHHk/3xmC6KuJA7Heccjpl2RqtLNl34uQdZejcik6wNxcjiiaGl9y
 WunmLARJSLizOFAKsVsIUnR9qBbjXrDZCt4ywilMkn5s32ymh0EG/7kOAp2YfAOVfh/STf27TkeM
 6UtMSXPjzNhyeG/fbIEixpVyzT0P3szzX/AhJBy5irihPkBgHAHtFS2tDGi+ruMeBxjIneV7Zccb
 jABvxQPc9grlvqZcfra26S9PoQKEdZgAZlUKdt9jyp5yX7S0n2gBik9xAkSJifH0Nc/xOA46hcr9
 78=
X-UI-Out-Filterresults: notjunk:1;V03:K0:Jya8o0eFnhA=:z+ETFPOwI7vQPoDCD86Vlm
 lOn0RMrMQABH1oOjeXWkad2uD5Sf3uKoLGAFXAR0UHcRiuS64PLaKO+PwQfihY2ExD0TocrL0
 9C7ewaVAKkI2m3DkNZuM9XssfDsrElECv+5FhxMEN9Uln15E/6LhXj3VoGnlqivJoraYgK2KN
 BGOzuBCJn7fBRZt5il4X8MVyHdNYLkWiR7LBrXRBXrlLBucIuQXdRr/C7cFYXABCiRastRJ5N
 3WgxO1jIFwmUdtEHFNkePlG8/PtXtHCycTQoyVOkGhjcqg/C+t97tEGZQOmorDOthPGOwFGUN
 oZjQrOZmHjrt7s/PQtHHdnDpgqk6TO9rLVq7xlRigk6DtFqY7xgW6esaPoXK6jJcSHxtkcM/R
 kTAV6bzyEcezt2/1EzAnh2tngNDPewvgig0DN3nl57QDmKC6Sl7qyh//A0jbup8b+5QKMnKJF
 oOWVdHjD8nUYaoLbjyFt8KKg5rRlXR560BhnIv8qxTaglcqLKraMLXazl2I+TeIOcrmXvqlsH
 R6FCBqFg6wlgusF59z3U0VLlbC+/5CZHASB7hQekW63pxi+K+xHMX8Om59pRL7sW3VaAaITr7
 lUXFHdeo1bURD0Vkt9k84kDwCLbdW4mfVo4cQyXVpHxPr8i0bkoVYA9SmHELRuyeR+B3fp+VC
 gIa9QS3Tl32Lba8ma7mrlcox5zA49a0AyJX6SVKjQNYGt6OyeEUy8pkWB99YHljJkKjcg5h7u
 CTvvGpmGjJ/9qpCLeAmi6jLdffsAZC1e9wj8fMz1OI259B3sSR/aO49Cx+CjWPHYjsJzCDB48
 6KRzDAc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_084317_064628_7AFD3749 
X-CRM114-Status: UNSURE (   8.06  )
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

Hi,

just a gentle ping...any comment on this?

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
