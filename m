Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2E9DE7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 13:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJEMsTjj9PtnxCbGOv0bZQ9dkm+7dl3ghY09doiBvi8=; b=Y+jLhcnIMjV7U6
	m2Q14nFAplOZ9kfbR3qzUfrfhLbwc2e4Zl0XLbrx5y7T25WyRNlIPvZy4rjFmigBS9zbDTWEDkUt4
	W+KUNlvForwbvcGP3CdamAZccVyF+LphUudek4X+GfnJAOFddF7uVUtMyEFPr+Hu6nlAWweydN9On
	QPVii2BvHqcRcKkaQHWG6x0KTr8sWg2TD5HyMFoS26YrLAGjljk80YDQNh5vD6DoGDDx8jmu716ni
	uIDlvsQPGN4REAC3csHB4JKtka04dBZJcTb871Nrtwn8wD6ZrqMprFDmIIWrbPvtrtf4Z96Z7+mPD
	MV8QgFJRenqeriCvrusw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRAWK-00000000IzO-3TbA;
	Fri, 27 Dec 2024 13:36:52 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRAU7-00000000Ijz-3ICq
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Dec 2024 13:34:36 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-2f13acbe29bso8365265a91.1
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Dec 2024 05:34:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1735306475; x=1735911275; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RYjnhMa2oZ9Lj699gG71FsVduTz2eJUc4klb/tcF4uo=;
        b=2OtTZ/R5LMHjOlRToXA2e4msmnOY7iRy67l57ufFdSi/1bvXtgLH7I2wOPxCTIxXiN
         9krUyEvN6bLkCjcIS0NS1qIgKjdCIuhUAsmp+XXAmIebSYtOK2PmWq803fY1Wsg/I8nr
         TcpBvH79hB8hFVSGI5KmPJxa5SwoxeqhV9T0Y6FcoaezFiVHdCWb1mbl+JQNGSIDRJLc
         XExrEPrHwSWJu4HdyCviR7rqRC/7AXBq3HUPQGp+h4hBeOgDf1EwKM87kRJYB5xqtHgz
         L5/5i6Tr3UDDPMc4dqkTbV5rReX32T0v6By3BqJeVMZB64T5lok1yGR1j0qhT1iBRY8r
         VFDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735306475; x=1735911275;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RYjnhMa2oZ9Lj699gG71FsVduTz2eJUc4klb/tcF4uo=;
        b=dcckUm96yem9mINuqydB87T1sL1rC3KxbtPxhn0tybCla9VFN0RgWnU91HhgSjo3+K
         p7TSWpMHHnQgoWDUDhuOA90EhqhBuD9RPBWIPko/76VeYigq2MSFcYoPGJJSQ8/j8iLw
         geJTtZ8n/2Ue6sYikZsNIS6vzuEbHdeMNqSOMQk/t3MAuoFJwbFCipduhWbK25XJtCr3
         XkykVbza7RDgYx+bLToqcIxXCdcewXGu+SaofJ1Kg2RxW9dAjuSicZwivv1hg+1g26f8
         wYWLIpSLxD1jqTK4W7y0uI4FN2poS07wcC8VXddNCaAw7xfkfIh3rTb0CHkp52GHDgdH
         jsUw==
X-Forwarded-Encrypted: i=1; AJvYcCU+V0zSwgNdTRvPuH1cVpD1OAkv9XT8RvsIKXeY6hBWJ6/pM5WJmCWECCaLr3iV7jRYTFb6mtxMQYPrT/TsOw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwIdSJ1JeN9Uy0FpXCLIag7JKC+uqaRIOHC2G+F4eQSBzBzkUvf
	UVOKYHsCx+ka5mC3OZuZSeswmyxvf7gi9ZuJtfa9u/7rTkxHpHzvwuzSR+Edivw=
X-Gm-Gg: ASbGncsWlSi6hCqqGyxkhZUKEkCxT3clgSELheyWtpVzbo6QX6ovXw1QNBBrCtod0RF
	fuBQPwsZ9aWiErlVzBAHD4KJA716l0RCBrwqnYbmGFTZrTohZTotem7h3dxqBibBCAO8qxl/gaS
	EtbQB7t4drwAjzcvyBFOJgKNNOVILxt/vplb/nEfu/kRnYHMVKLDIwS7S+MaLKHGir9g/zaOGLH
	e9dZXAAl9eqlGlUiB02GxNnS9XlAF+S/AF5PxAuLHAER1sHNPBzODrVnCBBX+j3yvJQhgg=
X-Google-Smtp-Source: AGHT+IFo1AIU+xmd/BjroiPxEBcqjrSTp4da67TjD3QAhh8/9xojEWMz65v0ommdo8FpLZv3I8JTfw==
X-Received: by 2002:a17:90b:2545:b0:2e2:c2b0:d03e with SMTP id 98e67ed59e1d1-2f453633e61mr35833720a91.5.1735306475305;
        Fri, 27 Dec 2024 05:34:35 -0800 (PST)
Received: from tops-ThinkPad-E14-Gen-5.. ([103.217.239.66])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f4623dbfbfsm11808238a91.48.2024.12.27.05.34.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 05:34:35 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 3/4] arm64: dts: rockchip: Add Edgeble 6TOPS Automotive Edge AI Compute Module
Date: Fri, 27 Dec 2024 19:04:19 +0530
Message-Id: <20241227133420.169714-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241227133420.169714-1-jagan@edgeble.ai>
References: <20241227133420.169714-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_053435_827072_7D02A4BD 
X-CRM114-Status: GOOD (  12.00  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RWRnZWJsZSBFZGdlIEFJIENNNkMgaXMgYW4gQXV0b21vdGl2ZSBFZGdlIEFJIEFjY2VsZXJhdG9y
IG1vZHVsZSBiYXNlZApvbiBSb2NrY2hpcCBSSzM1ODhNLCBvcGVyYXRpbmcgd2l0aMKgLTQwIMKw
QyB0byArODUgwrBDIHRlbXBhcmF0dXJlLgoKQWRkIERUU0kgZm9yIGl0LgoKU2lnbmVkLW9mZi1i
eTogSmFnYW4gVGVraSA8amFnYW5AZWRnZWJsZS5haT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4OC1lZGdlYmxlLW5ldTZjLmR0c2kgfCAxMCArKysrKysrKysrCiAxIGZp
bGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWVkZ2VibGUtbmV1NmMuZHRzaQoKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWVkZ2VibGUtbmV1NmMuZHRz
aSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWVkZ2VibGUtbmV1NmMuZHRz
aQpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjkyMDQ5NTQwYzIwYQot
LS0gL2Rldi9udWxsCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWVk
Z2VibGUtbmV1NmMuZHRzaQpAQCAtMCwwICsxLDEwIEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogKEdQTC0yLjArIE9SIE1JVCkKKy8qCisgKiBDb3B5cmlnaHQgKGMpIDIwMjIgRWRnZWJs
ZSBBSSBUZWNobm9sb2dpZXMgUHZ0LiBMdGQuCisgKi8KKworI2luY2x1ZGUgInJrMzU4OC1lZGdl
YmxlLW5ldTZhLWNvbW1vbi5kdHNpIgorCisvIHsKKwljb21wYXRpYmxlID0gImVkZ2VibGUsbmV1
cmFsLWNvbXB1dGUtbW9kdWxlLTZjIiwgInJvY2tjaGlwLHJrMzU4OCI7Cit9OwotLSAKMi4zNC4x
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
