Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9977A606A331
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2026 08:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Cf/cIO0Z;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=uRSBEPII
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=S1L3N1wMJudEIjA1Tp/96ZAMIcUqRwYULHxzBS8nXSA=; b=Cf/cIO0ZH7AtKGjlZ9JYcCjiBF
	fWel453SI4bXkRZjJUPnJVPFRNYkbKDCV8Cd/ovZJWM3FQPiERGxmFSyIE9I8ncNMqCkUTC6LGZyH
	VhFb3AvJlHppLnoZQErSaP0/d4GVzc6KcBpE+bFkmxguYfwvb01KkX/TLu59mXSNnY9z55i6FzwUX
	L7v4RdMSWQ43BpuS2BWv6qeLAv1DP0aPxacgR2efWt13ankQtH7+glCciHt7YrBJJb6x/4PWNe54t
	4l8WOkGoI/4zU/ebTvoGXFaHUtUoOHsn4x46nV4stTPuko0stvuZqIMWjmB6rP2uisgtrOZ6rFZ5v
	h7NvKAog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWVGV-0000000CSD7-2yLE;
	Thu, 26 Nov 2026 08:55:39 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWVGT-0000000CSBH-0CRL
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Nov 2026 08:55:38 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5c154a41f8aso523080e87.2
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Nov 2026 00:55:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795683335; cv=none;
        d=google.com; s=arc-20260327;
        b=i1ED1qSSFd1hmtoj/GKtjtKy/IkaksOCwGPVPO5hCmluqoWnFlpLhCz256uHWSCl8P
         UEfwzgrppBLB02obiQj+53qfb8sqVuT8xeFTM/Y5P5oLH8u5Ig6Q1CzcZKQ/zjcODNGL
         9zPuNBvA6fU+VkQyrUozeMwVJZZnB/tHTG9rxtyygjtI3875nRxkqCReYM8akPjV9vpb
         b9dCIKtN+lg2KwA8b4B9OfkBAUBaqHMpfhMHK1xwB1RjNsAMkd8ZcO/P7FBkOprxuUVB
         Xhz85x8NpZjs73loF5bAknGEie/ScT6rqgDuyP1R84N09mFFr0Q04tY4n8/R31PEH+f0
         qWbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QKThXZIRAMEkOiH8X0ve/DDQDh2imYfE9WZ4cHyq7O4=;
        fh=ZtXWoyMSDGI7jPugOP1NSsvD5pynwvWeq7x6vm65CAI=;
        b=AWOszdWuewvL8zPaBCPE6G9eJotD1XrsQLBUDy7qIooF5h2qSRiyusB6PQ2Qscer94
         RSDYWF3TunuXZmNtK0i7v5YZR5Czi/hFCz8tRmWccW1jZbq1i4dQGjwwV5mgQ6/Ah11t
         LmdiOVLUfu3IhqW1fNS1am9NPdEq69YEkphhFbAYVq75N7LC/IJSf1AmKaYiPlbT0sEj
         1MtmYo1764IA+YjhNwfCQwh+T6kOoNXPU4kWoI0XH2qBfBACDNiasLJ8JqGtvccBT0u0
         McANbluG1nsmZ/Tt7OUeS23+KZnbc4aTDWXllOQE8GKarqmf6bJ0fpKCJa6TPUjAn6dr
         OnuA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795683335; x=1796288135; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QKThXZIRAMEkOiH8X0ve/DDQDh2imYfE9WZ4cHyq7O4=;
        b=uRSBEPIIYR4IezidyQoIefAKTpYcjMh9/HPFKBbi03nVCxSzq0XKZZDr4p0JAiqSvH
         4uSkJshlQ32bSmGt3JDSWMZv5KA++MwYGVs68jMSDcpTc6TxtwgfyHSJ7Bv4fc7ZEztw
         KvZn/E8ArcuXrMNGVK+54PzJnZwXZVP36CUzA20mTITSEVnecKYOJdCx+/sK+XSgTXX+
         PYOGEQ8vrV4a+Yuu1OFz3bFpOS4M1S25GhmxAqyFMKdHb30boyJuTQhI9ys8G+cD3Trd
         lHwdRYdRGdQfM9ve2dOR8ptu9flRxD6TSgInABBfk/aU+gvdfFzz79clQD6xntlX+0S1
         mqnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795683335; x=1796288135;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=QKThXZIRAMEkOiH8X0ve/DDQDh2imYfE9WZ4cHyq7O4=;
        b=bahYVn2PWIENwgGV5f2ZBn5f6FvWFF/5IHl+XOrwYzGYI5e2tMhk4eG8HdFRcl1QMG
         xQ/7krQfx2bQefZktLbjwKQ2vJuI6wtljhjomyTA5S31xXtz2BrzmqU+sdwlMj5yDyvq
         PAdB20/RcgTST/S+iWetaqzuvD9asdFuXkS0LXfv/h0uAvJMOeC93u8ssso9NbdoccQu
         mS2HF01gzFON7UwJlGI9Q9qu0uswF7gTdHGjuMu2mMGC26iv1y8Oq2zk0Zz59//jVOiw
         /GS4rMWubUI77gUP64xzeJFELs6A2ghPq2KJzHNcrY0OTckRnglZN3yVweH524ZmTI7f
         wTSQ==
X-Forwarded-Encrypted: i=1; AL+hErFVUjqLN04iZ8MP0oW8eVYtHaTnH8navQ8bwrTc9a9wI4boFvjiPaZrXSenWjOH58iVkbPmVuTlsR5sTFUySA==@lists.infradead.org
X-Gm-Message-State: APuU4Z80/Yau6Cyu7fPaoMLL1awCEsnORoLYAqWIFa9lTD0EhIuWgsA6
	vNpPXUMkAy8o9ErVASl8TAGm2qBcI44ov6cWzXYQhrqGV8ROKu2x5DH82pX9j95o+a/vDiFKe3+
	6Bw2Yf5rHvxN3M1CwIHDneaPtnlR0Bvo=
X-Gm-Gg: AZFdTZf/NSRd7l8J59vj02kz3YQrOKvaWSQ6WFmzjFiIFWwiEsLenYT8hZJcdp81lZc
	jOlWb6HIONJRc3RtPb8weRjwtYVD7clQrPUONSoqd+JKMcD/8T19tWPzfWnSJIB53Rzzkw8bwRA
	wqUL0W4+hvAGPiwxpW6FI4sK3sS9MLq1p9wIkP0qtkYPpFaB23QaU0qjUn1V+Xo2/pBYV2zmLuV
	FVqC1gNKJPFQYE3h8RYi2BanxT0wpKuHWugt59o9gN/nEfRZJJpaQK4RSemplnxro2AInDGI7ue
	RGbC8XatmHA28NjOafLuv8pt+qAEZM4Qk0x9FZYqSqaV8cQEbxhmgAaa/a0h+0AJxhmdvGTbQho
	MKnhqJWG3C5NxN7p1DiBBiNg2EMP86bFNTpDgZ5f2UyY5VEAMPc/1a/B2EUhfBHfrkZXOKS8=
X-Received: by 2002:a05:6512:1151:b0:5c0:62:7fc3 with SMTP id
 2adb3069b0e04-5c1bc7ceb5fmr8223250e87.5.1795683334857; Thu, 26 Nov 2026
 00:55:34 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261113-mmu600-php-v1-0-231196049a3b@gmail.com>
 <20261113-mmu600-php-v1-1-231196049a3b@gmail.com> <20261123-quirky-scallop-of-beauty-c662b7@quoll>
In-Reply-To: <20261123-quirky-scallop-of-beauty-c662b7@quoll>
From: Arun Iyengar <aiyengar1990@gmail.com>
Date: Thu, 26 Nov 2026 00:55:22 -0800
X-Gm-Features: Aa3M54pFlibDAmDC24529Pztyl31CflHnU5Me60OGDKTLA2a_3s21NJ2pQ1ALv8
Message-ID: <CAEy9hNX-TiThoXZ9+Q7j=bB7PpNBr7Wjz8_sH7C081HXka4xHA@mail.gmail.com>
Subject: Re: [PATCH 1/9] dt-bindings: net: rockchip-dwmac: Allow iommus
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@kernel.org>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	David Wu <david.wu@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>, 
	Niklas Cassel <cassel@kernel.org>, Serge Semin <fancer.lancer@gmail.com>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-ide@vger.kernel.org, Pranjal Shrivastava <praan@google.com>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, iommu@lists.linux.dev, 
	Shawn Lin <shawn.lin@rock-chips.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_005537_127641_1376AEEB 
X-CRM114-Status: UNSURE (   5.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Sorry, I missed the report. v2 allows iommus only on the RK3588
compatibles and drops the nested ifs in 3/9. It follows once the
arm-smmu-v3 clocks/resets binding it needs is settled.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
