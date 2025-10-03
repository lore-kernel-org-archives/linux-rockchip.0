Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD879CCA476
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Oct 2025 09:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=itvozdMBhaJ9JMLR45hbS4tUGvj3Y2W0ZElRNlPybt4=; b=NTeAGMUxRzca3k
	xfW+/eUHlsyQSbkOc2vqFEtGfG/DmXR0WK4f2nlXnCfLGz//Cg03iPgG5SUaynYQKvl6+momsgsjd
	8iEpjvlG5pUCkx52gW8q/deEAsrZ/c+1HiHnMYTfifngyCIZ7u2mHqzQpxuoqzz+id+xZHd6jY/tO
	K8g9dNRk8GOf6nDuQQofD5vclULbCo32vQGAKFP/j0Oa6PKISNF6zhfB+UBc3aN9MAiBYpAoajoZQ
	BYVrQ0dG9ltKS+fRwa+Rt1zyGjlhhT9V0UlnsaxxzBt82kCwxHXbAVppknHuvoA4mV+ZvPPxflCGs
	5mpa/GLThWFaIx5s/T/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4cWO-0000000BzsI-1urM;
	Fri, 03 Oct 2025 09:56:16 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4cWL-0000000BzrL-3f1G
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Oct 2025 09:56:14 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-7811a02316bso1533226b3a.3
        for <linux-rockchip@lists.infradead.org>; Fri, 03 Oct 2025 02:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759485372; x=1760090172; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HjkSzcHQCRHxGjAdHJ76YWjL7H9j4QRw11Hc/S45qjM=;
        b=bY5fkK2jT6oUBnw681NaqZxjINsxZIQiGl5DHVXyEABFXSZhwR4aNX/EhxrSbDQTGm
         Quef08MzmLDvTweCnoGzEbObJiGnYFZSSg3GDSPGs0T1vYjV2XHH6U3G8LYEvUheuvWL
         Eg5MAljYVq5BG37k7opprOcRlKXOn/RRYy6P4ikXIRniAwMwRjGk/QFZ3h/Gjj3Lchar
         kC9gfN/x1xZvZ7SXXdX0WSZndOGSMGdjDx91IuQPdZXfDafvxiQWvCJRQODmzMl6QMar
         3GlKDk3Fp7HaUtP25hujws7W2UrHDqtQsVWjtoVUsi/3yN8fuaitIGZakwtQPHzU0n8K
         tARw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759485372; x=1760090172;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HjkSzcHQCRHxGjAdHJ76YWjL7H9j4QRw11Hc/S45qjM=;
        b=uj8xJrHEUcBtZW87BxOKL0JhVYNMrM0VmL+RQuF5Mum12p+WuGUY/1QKbQV/N11mhW
         2CB0AsnLpHAsov/okCdcldeB6uyauWAHIVz7ZgFUAmlqkRoxpyJ4S7nwGkWAb2BPpmN0
         JqzGGcT6rgoSZ9ZAFLxLut5kAn3v3qvd6+U2eefkrKdQC00bcmFsBewR87SOf/DLe7nP
         lgY+g72Y0d0lemaWRndfN8FSwWDeP6cV/mzy/U6wE27i5i1YIBjkZ7s/2CJMOf3G2KXu
         Ta65kF7bxazxNfWXIZp4n6QFd0NF6KSHnBDtRfbHXsJeLFmpg9UkA7ok2w4SHpUCk3yg
         oXeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCrOQExMUHOOoxAWDsWa2FoTpB29cRrYkiz9586rKFG6dnVQO8u8ZN8/4H7WN+gEOPrYNQmz0vQHwlw7ixfA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6mPZxl8bEb6TcBfE089QzR5lD1je/Aa9sSjdKpYyQDty/fI53
	A/hJd60gV+9AH/M6C11QnuxarJP786BCsJ6+a/aTtCm/WLx/4NIqRNas
X-Gm-Gg: ASbGnctlYS2fXqATOPAptmWCzLwWumtRtgRiGoQz+03V0iE5VsveASpwg3daKkMQ/Nq
	gsPnngvQng/U8AGWSacSzL6b0XdL+j0RDYersK+h1cZAtLUXtxbrjYU/BjFZl2Yv0aoFT9oczRp
	aoraP9Y/rdUoJPCkeyUwWvIVCMJR5qsC/G0LJZKvOtd5tFYeF8EKyZ5/LH1Y/1uZMW2UOp1mZUx
	piwmq8IU+Iir8T9z88TbUZZ9CfdKepLcNFOvVlZSLtKJcWBHuzi3Unz8v2XaKOOPSN2cytpRW9B
	jJUoQZReXOC3Xj6mxP/o00ZKNt4QMu1GCZ0pjL3zhCWf/ghBhT/cXAkTNv6qDdch8MO5B2xk4j9
	8GSVTvJob31/Ayij/aU8znyqxaxYLWRPaKw==
X-Google-Smtp-Source: AGHT+IFgG1sDmJWIInobrT6MYZozHk7ObDc757Ax6SKK+T4qAyB9z8lgZO3RUGk1fZnpjVO1SGBv+Q==
X-Received: by 2002:a05:6a20:6a1a:b0:250:429b:9e6d with SMTP id adf61e73a8af0-32b620db8bcmr3216562637.44.1759485372467;
        Fri, 03 Oct 2025 02:56:12 -0700 (PDT)
Received: from geday ([2804:7f2:800b:2c45::dead:c001])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fb1a9fsm4407283b3a.20.2025.10.03.02.56.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 02:56:11 -0700 (PDT)
Date: Fri, 3 Oct 2025 06:56:04 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [RFC PATCH v3 2/3] PCI: rockchip-host: Retry link training on
 failure without PERST#
Message-ID: <aN-dtHxYTspw3rvQ@geday>
References: <cover.1749582046.git.geraldogabriel@gmail.com>
 <b7c09279b4a7dbdba92543db9b9af169776bd90c.1749582046.git.geraldogabriel@gmail.com>
 <ac48d142-7aec-4fdd-92a4-6f9bc10a7928@rock-chips.com>
 <aHnAcbXuFqcMXy_5@geday>
 <067e1833-8527-4c66-90f5-d284f7d2ca5c@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <067e1833-8527-4c66-90f5-d284f7d2ca5c@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251003_025613_915478_FA7F5E66 
X-CRM114-Status: GOOD (  15.44  )
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

T24gRnJpLCBKdWwgMTgsIDIwMjUgYXQgMTE6NDY6MzNBTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IOWcqCAyMDI1LzA3LzE4IOaYn+acn+S6lCAxMTozMywgR2VyYWxkbyBOYXNjaW1lbnRvIOWG
memBkzoKPiA+IAo+ID4gQWxzbywgc2luY2UgeW91J3JlIGFza2luZyBtZSB0byB0ZXN0IHNvbWUg
Y29kZSwgSSB0aGluayBpdCBpcyBvbmx5IGZhaXIKPiA+IGlmIEkgYXNrIHlvdSB0byB0ZXN0IG15
IGNvZGUsIHRvby4gSXQgc2hvdWxkbid0IGJlIHRvbyBoYXJkIGZvciB5b3UgdG8KPiA+IGZpbmQg
YSBvdGhlcndpc2Ugd29ya2luZyBOVk1lIFNTRCB0aGF0IHJlZnVzZXMgdG8gY29tcGxldGUgbGlu
ayB0cmFpbmluZwo+ID4gd2l0aCBjdXJyZW50IGNvZGUuIENvbm5lY3QgdGhpcyBTU0QgcGxlYXNl
IHRvIGEgUkszMzk5IGJvYXJkIGFuZCBsZXQgdXMKPiA+IGtub3cgaWYgbXkgcHJvcG9zZWQgY29k
ZSBjaGFuZ2UgZG9lcyBhbnl0aGluZyB0byBhbWVsaW9yYXRlIHRoZQo+ID4gbG9uZy1zdGFuZGlu
ZyBpc3N1ZSBvZiBTU0QgdGhhdCByZWZ1c2VzIHRvIGNvb3BlcmF0ZS4KPiAKPiBTdXJlLCBJIGRv
bid0IGhhdmUgU2Ftc3VuZyBQTTk4MWEgU1NEIG5vdywgYnV0IEkgY291bGQgdHJ5IHRvIHRlc3Qg
YWxsCj4gbXkgU1NEcyB0byBmaW5kIGlmIEkgY291bGQgcGljayB1cCBvbmUgdGhhdCB3b24ndCB3
b3JrLgo+CgpIaSBTaGF3biwKCkhhdmVuJ3QgaGVhcmQgYmFjayBmcm9tIHlvdSBzbyBJIGFzc3Vt
ZSB5b3UgdGVzdGVkIHdpdGggU1NEIHRoYXQgc2hvdWxkCndvcmsgYnV0IGRvZXMgbm90IGFuZCB0
aGF0IHRoZSB0ZXN0IGZhaWxlZD8KClRoYW5rcywKR2VyYWxkbyBOYXNjaW1lbnRvCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
