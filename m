Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A672C53219
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 23:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wMS53Lw9tvkEZ3pGXOlMCRX3cVk3CBF/dHwCCHYPNI8=; b=0mnrMmg9I8fR40
	/Wipt5EwC/69j8A4y8wnyi6urawYK4Cbz8XscjaRUYdxILCRZ8/D3VbQLlTRa4fNSpuce/0bnphZS
	vxZK/etsil2EjdxvIRSqwWdzro7FTtLThSSy+XLsn+5jLjOWmEt3C9O1wfk2I4YZpmoWf1OleeIjh
	2Rmh5/9yqE/WKFJuDb0Ogh50H6pw3iIhWUBoJweHs0U67GVfjM47iFK/VpoNV3wFaVW7pJFviKr4y
	I9hHhQG9XA2i/JNIX8hvmkF6d6BEN+X1duIJKzK/+Yn1xA3L3/uImZgqTQzTeDEVboXykFjZn1Zlp
	5oZd9SLbw533ue3b7RRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woqvY-00000006Smr-1X6H;
	Tue, 28 Jul 2026 23:09:37 +0000
Received: from flow-a7-smtp.messagingengine.com ([103.168.172.142])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woqvV-00000006SmW-1BxP
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Jul 2026 23:09:34 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailflow.phl.internal (Postfix) with ESMTP id 8594013803A9;
	Tue, 28 Jul 2026 19:09:29 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-05.internal (MEProxy); Tue, 28 Jul 2026 19:09:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1785280169; x=
	1785283769; bh=i/v2RaSJaTvaJyiuYWqiQo6FQ6f004XdRm6DgERiK0U=; b=s
	uy9UXfR/3JyFv01zvKrXxUxnFjTr5DsaFWSstqYLRpW8FvzCGRqTqLUXOi+WxAxn
	cq8Ewez1+hWWgbj+l9xdqojZkj/4kBIlGp2m6vnR5CkZY/3Z7yPAl6WYJ8uRw0Us
	u7W6eW0TMAiSh1I0+ua1Dq/y7rl/1yAZX7JajJdzHNW6b/RVnwHK8+3Uf/tu4Cd/
	tmd38+60zvASTiB8T2D+ZHzXsUimX8Mu00AfrwvEwxEqT4PTS94F5svLxYZT6Mne
	qWJvMIQBHTJzQqsQTIS/t5XM3pDXkmxFjOPQrKMJhPXtN1PELVqAoirjjdmbE7mr
	mMbBnIdPbwRKzwiK0tI2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1785280169; x=1785283769; bh=i
	/v2RaSJaTvaJyiuYWqiQo6FQ6f004XdRm6DgERiK0U=; b=VjbgAg+PrmoD4z+5W
	7lrKfJKxA7BdyNG+lphqj1s/UR+VwSaHD/pcnYFAyr8qvLIR8i7qgjHRFcG1sAng
	3GvgZcsXWbCDqUXUIwjE1jtqh6Vle+xFOV4IYeRDgLv0m6b56mSTFYGzw/HQQa2/
	aXXBs3s9r2SfHwTrgsFeYoqt7Ju9hX/3LFreO7SmdX4sbniypvhiIg98QUcoFXIt
	XDq/XopDJK2lbVdWQXCCBtoL3+riC80v9n+KB9wt5HCQWliNkWv6MQCBRGrR3nwm
	dQAWI1SD2vAZJLCsvFEsu28XI9ilXOkSLdaRMPcIZMw3FA7IXHy/97r2zgleJ8GR
	TSSMw==
X-ME-Sender: <xms:qDZpaudfzG7TEW2apUfz_uNWUGMh0olSS85lBb5tznNfrTRD0diWxA>
    <xme:qDZpanqDiaEkU89bFehZdywYxZeW_oHN0AVHo00WkNnFAebofItWVRVoVnDu_DGT2
    ME8Z4Bkx5IpLdMW6StmCxM_OFNg5pRHUkOCzrM9_eNp6KPjNbE0Pb4>
X-ME-Received: <xmr:qDZpagmcT-jOgnDZztvnEmmwimmwUtIouarOBeCa8gQkTuZz_28UZYzARa7j6mw6v0hnwtBfzQHNjN-gZ57bCzEl_zK-huWeqMNgiMdlIP1b>
X-ME-Proxy-Cause: dmFkZTFBLgUAwYceiAZYCfSZxetME8tYMXEjtYBYwbB1XcaiQ89MQfYVgcMBY+xn3/bB1q
    SUerqOjLDgkqSL7B9ism0wXKyyMqwwopWkiPj2+J+SnWsGIASckSf5TvBem11b9kw3sx5k
    F7bqnP76hT1uH/m8fJeD654iuabUyclFF0CspLNz/52P7sM9URF2o0FRtO6Y8lBulPxDs9
    CglSZ+duGLxl4vyJvpEsY+whzTiuX5XXLPqz7MaYqVR56Nv5er1KhBhNs5UtgdFQ/vdXCS
    x1vDgco07M7Eke8+zqT/aPlFaeioKboTPDMU9g8CR895vGWc9c0dbRsLtZM8TmOlUoRSRU
    s6hi3H0E2n7Z4dSP9Q4ZY7t+BuCiiC0yXm7QJc7mQmAFVakfwXORVd8QVhV9iYri6iInUa
    xkZ0Y2RlxI6d7yFvZCIe1jVOjOn0KuXW2tc98kmTQamxrO6rGt0k5oYd/2kPfjwgGj/Taw
    NR5eTKa8SWoAwTZEWSqBTSvzWDjVyIh/C1MTd+A6blrhlKqPRKQsiZtF1p7Ux0TFdqedy9
    G5EqyObI5a7ohJKBUbcIWhIxEwfo3Qt7jUKuXDG2wSMDaqrb4hCz+Xtplp+D5JqAmkIqZj
    /vDXmssnOqXKmxsZctPi0+iBJyq68vPEVncMJzwV0bw7ryxzj9LPNYeivFCg
X-ME-Proxy: <xmx:qDZpagT5C0pA60VC9rjRO25ViNuOYn1_CfIjB-TfkVv8nm9cDJzRdA>
    <xmx:qDZpauYOZrHunHuk7Bj8FfgwsB1B_iHWbnCCM7rVTRWB9TcInsY5Vg>
    <xmx:qDZpao_LcMD0NtLSHyUxp_j0mABZL37I4lE_AsLTivF3b1uDwe1zcg>
    <xmx:qDZpaokwaAvQZ34A38auaICDUuEAe0VB86iIJjtFCja-jhr_nI_MpA>
    <xmx:qTZpaoGWO9yM0Wym9sPd05yvHPsiLJMUUw53lElulDy2G4PjAfpAugfT>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 28 Jul 2026 19:09:22 -0400 (EDT)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: andrew@lunn.ch
Cc: alchark@gmail.com,
	attinagaoxu@gmail.com,
	Frank.Sae@motor-comm.com,
	hkallweit1@gmail.com,
	linux@armlinux.org.uk,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	netdev@vger.kernel.org,
	maxime.chevallier@bootlin.com,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH net-next v2] net: phy: motorcomm: enable the reference clock for YT8521 and YT8531
Date: Wed, 29 Jul 2026 11:09:16 +1200
Message-ID: <20260728230916.1239080-1-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <37c2162d-134d-48c5-92d8-3355306f15ec@lunn.ch>
References: <37c2162d-134d-48c5-92d8-3355306f15ec@lunn.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_160933_592767_5A83E591 
X-CRM114-Status: UNSURE (   5.46  )
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

> Look around at other drivers. Is it generally put into a tiny helper,
> or used inline?
>
> My gut feeling from reviewing lots of drivers is that it is inline.

Agreed. v3 open-codes the get-and-enable in both yt8521_probe and
yt8531_probe, with no helper. I had already sent it before this mail:

  https://lore.kernel.org/all/20260728055659.1211459-1-gahing@gahingwoo.com/

It carries your Reviewed-by and Gavin's Tested-by.

Jiaxing

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
