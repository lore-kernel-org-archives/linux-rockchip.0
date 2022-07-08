Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60C08C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jul 2022 14:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YDnsZmqmdeRoXvQFxonr7YzlxwuRnIauZl5KtpDeHtY=; b=j3GTmqOSutynRQ
	URMz1RN8qWQO11E2gX13eTIQ4R7MYG9LrRZkV8R3YTOds3AXxmWIbM+UC3sQKG5osYHAQqCDPGUJJ
	jrR7KLkr/fHD3aoUXtL1Jb5+nrE5jY3IUOWN79cM9F44ojiPz2QsIA5bZ+bX7QQfkyaHdbmBvLldr
	K56jlTJt8qGVp7RKDDu7NhKzd15tkmsGkOFtjFj83vAHBrQvxjCQmBbzjk7sSWV1QGQKJ9II3wHuG
	/Ti8TFukdQMjI6ABaMyPUQCDgkHpMiR2BxhcUSuea7+B6tSCcv1eHOOciXkm3H6pYeDwSkrE3DlEr
	O38jDH85zbPq0Wii4Zpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9orP-0047bs-55; Fri, 08 Jul 2022 14:21:35 +0000
Received: from mout.gmx.net ([212.227.17.22])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9orL-0047aC-UH
	for linux-rockchip@lists.infradead.org; Fri, 08 Jul 2022 14:21:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1657290076;
	bh=6lhQbMhE6Tq/JsXBUhi3e+zhcqO27HN8eOz+uNLxVak=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Qu8KxQ7va/kQoThEw5wcX6AZ+LOCulHcyvKRJiHoBxoLvr9kuCA6a4qs+Nc4Bpl5h
	 wecj1UMnBgTjPCCY1Sr4i6On96bzMKhWn0sH1dY+qeNcVRIYTWKXRQ6ZXc3/2p3jo3
	 g/3BXNJS4wCI8fA3ONdu8JdZr0SSbfIuKjroJzik=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [157.180.225.69] ([157.180.225.69]) by web-mail.gmx.net
 (3c-app-gmx-bs34.server.lan [172.19.170.86]) (via HTTP); Fri, 8 Jul 2022
 16:21:16 +0200
MIME-Version: 1.0
Message-ID: <trinity-23d198fe-40f0-40bb-8d95-2a64ae047a7d-1657290076363@3c-app-gmx-bs34>
From: Frank Wunderlich <frank-w@public-files.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Frank Wunderlich <linux@fw-web.de>
Subject: Aw: [PATCH] arm64: dts: rk356x: fix upper usb port on BPI-R2-Pro
Date: Fri, 8 Jul 2022 16:21:16 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220708132706.81450-1-linux@fw-web.de>
References: <20220708132706.81450-1-linux@fw-web.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:6POgQ4vFo6v2yxUWKuL4B/SKN+XUsFnyRZLUJ8RKpuNVB+CVRgUrtdqsuKTkX6DYgczdM
 S79MFaUYh2YAHCctg75rCXezG2XeG6pSK72EuX6BaIiUykX1x9lVwIAUUgFUkoOPjpD5EqR6fUDl
 go6/5GkbcWukqZ5Xv2tic2OdfZeeiwtMAiMkp1YxBJMudGPAC92m3KqlIw0RiMiA+LgQfn3zIbiF
 UKzcgEK4EnU/Ccjn3f7QK2hNolEB93PTxFV4c2q1U2Me8VQuhKQ3Y9SNhyUP9cVWGo63AzzZpmtZ
 yg=
X-UI-Out-Filterresults: notjunk:1;V03:K0:2Ss00Y/hSzk=:W+x06xOV3HSvSsYyXdbK6F
 5sjv8mfCSOOHEOg6rxQHgGX/yqo9n/Irjw6ctZ9iYnFsjlASDEQ0anJ6kl/q+N0hIuMunTRh4
 AUWZy2OJuiQoynH5m/huT/LHorj0WAUnYB04wT9JyxFyAjY8ONrOULoPO11I0uMmSkzS0WCm2
 mv9NIIftZbU19iLpdoPTzFuibq+2PBwrPrD6OEks2V2icsj27YYhxOnYW4hdcP7UjPkyrgtn1
 bOuEGeQl4ayrDs3jI+0n6rm3HUGxBONnL2v7MPHZXErdXWxYzFVC4pLk0V4U6elUDuce7V6VL
 2Vhl6wfvsI6q+222HDdV/fzEiERFnatmjY2RBX5HcjBefCYsmGPpO3tzISbJuty3EdItLalW4
 mhpS81gsaLGM6RSEN9HZLmzglApx/rWoO+e3q3an9Zlpg+63LlsvcX8WioMNhlkSitiwnkJCR
 WALLV2rjor6Whr6lyQK/jFBsh90gGRCz9e0Ja0YCkx9GAH9iyOIQvcZq0yzNfD0JcTk6cbOWy
 /q1+Q7txmkFcADCG9oCjsaXZE2UpyeX9M+URxSQq3mWPqxndZPI1s3UUeWwDKOk5QDvynKSfn
 BPDv3+foeeT3YfgeZ99QJVwrCBJQOPfJUf73G92JmPkaul70935GSvSATHdC61pH6WNxXw+Yr
 BkjyB4sAF0eGx8JTpYHKSiwJWM43rKJ3MDP6mWBZ297YyCtOKajWUnCHRodmudp9CmYCGDdr5
 DyXQaqSs5rxgXBrC3fuYbN8/e2HobxejxhbmPbA72ZHGRnnA5bXkXak03NtvsGaWJ7lfpBeXz
 8r4KUoU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_072132_521973_56D93635 
X-CRM114-Status: UNSURE (   6.67  )
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

noticed that prefix should be "arm64: dts: rockchip:", should i send a v2 or can this changed while applying?

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
