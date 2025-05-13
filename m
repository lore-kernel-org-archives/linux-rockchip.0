Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8299C3ABC3
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 May 2025 16:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VFfLeMHVsc2DpK1rej8GHqUZ0xpFsh2VrZDZKKoq3w=; b=uswat7KWMRRyZS
	qszFsHbxI+7A42FkxQNX68NCvrRB9Uw5UCf01Zjx9ClzIruj/tQL8wE7AtotiIS95l9uwzvbPFDQS
	k50QLHV8SPuenYCuEIHywcd3MTcYDq5qisVp0OJI1YZ4FRcGrDQqhBJBPIyVFtzfE8HlFjMAKm/Vx
	c8qHqfDmLvbTjrpAGtx507mmz5ETa/Htu52PAVh6Totr8YI7Xq0jwrOJ0E5SfyTJ1UXvpfYP85ZM1
	zEVvOCxp+kr+NIcIYDFhaQJIXqt+KbC7TT3elOlH9oHKJaqqYAVHrpIz9qQZnSGdcZUQIYbbgoOlq
	NA0cQ3VpDFr9g3MNKltQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEsC4-0000000Csr3-3oZm;
	Tue, 13 May 2025 16:09:24 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEs6o-0000000CsD7-1fwG
	for linux-rockchip@lists.infradead.org;
	Tue, 13 May 2025 16:03:59 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-43d0618746bso44543955e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 13 May 2025 09:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747152237; x=1747757037; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mPP34a2qPJLJUDs68IjGTEbCLX34B34aXKmwHjCda18=;
        b=IcjRY2wG97UUr79oV0VgjogWZ677f22Xvsse37TkBHMixKAJNeaGkppVekLrOdMpCe
         MaXFzavEsqcq0CV2fNea4R/ailrXpBgbw+SQuZQ1NzI7gtvK2chiP9FsYcOr+nfyhqyK
         7CJUEfdPJMNmxxiEsnSQc5HHo0w+FeaAk1uMRVrX9M2FrZKxjRnmmD/s83Yqvj8TiqfF
         f1gJSAkI1BZ9BEvic8yJMN/qkDelVPH0JOiY+kkgoSbx9yuTreRP7gYYveqN1MzlS0lV
         MtAisWWRWiym89EknDA2tKagQPHtfZ8aKVxGl77KFzqhNMjLT7KSuS/6OcPGhCHFCv1B
         UYKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747152237; x=1747757037;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mPP34a2qPJLJUDs68IjGTEbCLX34B34aXKmwHjCda18=;
        b=XiGiwP3mpnpIt9qGl9r8ZyaFS1JOE1oC0zeEIjR2mYJXc6BJjzmb5FWWy8Lu/ZUPq8
         UWtaw8Rpm/HAr3A65KOayLJ9NZu0pexPFFzE+bd53SJa5DNlWb6GRq9mEwrdnJiPZYFD
         wqEjPbbX3d6ox30amdZUl1FiinJJfUmO2BwNraGTqInEef08xRhXpLUx3N8PmVrnzuzS
         ymcis6sM8nv6GFE54TtI0Kysx1b3sOfttNqoOXVJM3d++J9NPO097mfvNf5gmYhV+8Po
         +jksc8bZEAp/h72TOnlAsRUMdQ8TBrUjOMIa06m2BPsvhwwSjDj/q3AiJRZaVzNWEUdr
         WRbg==
X-Forwarded-Encrypted: i=1; AJvYcCWBQOCA/TBiTavl3m1iY5y7iMpL1wIvNXfB6wCZAjG5RIbp3x7UPjC5aRekFZnS+cbPpkotJm37l/sk0qYk3Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YwvlFram2rp7Wq8koQ4RUwbt0THRRiQwbhfLia5jengmU1vUwIu
	E6EJhBM4zXK5dN4TLStRXVc236PqHRpcLMmGkgBCVi5/5SO7gje+bqukoKFoSw==
X-Gm-Gg: ASbGncvSG2v2bzfxpciHT/0+csp9KEUKz1Ma0+dwtlsy1OOi47OmXSrsbHKVgjpKBXY
	K+A7R5LQ6nTUMaC4vZx+WvvoJ2n4gZYP3yHSLx2wWt1YVlcXw5Jjr1Pr1bD/+1HM6mS0/UTBijN
	ZucJGuZ3+gmGtfp83Sk2SgWoMwbIFTBCIEhTIHQenkiRGfMFX/jWnUgXY4AFN1zqvYWvALycXYd
	lnxlqEhdWWEGRgcq982GFDjP4dHZ9m2i13XgVdrt+ZyUiVsTwPzJOgnj2/R+/0Bg4KeteK2wYx2
	g8uX0eDgBP17Qye6tTDVWCQ445CRnIYT/BaUKbPGwwCQqhHhZjvhMkrCWnY1UVt2iEjLmIBMfGZ
	LPKKTS2JMhByfXQ==
X-Google-Smtp-Source: AGHT+IFUs/E8lGN4Y6i35nSeqOc0zjhP+SyJASizXG0DBXcxPw4b86BdcbX5E/ih1Apnan2qlPCivQ==
X-Received: by 2002:a05:600c:4f54:b0:442:e9eb:1b48 with SMTP id 5b1f17b1804b1-442e9eb1c1emr42627385e9.24.1747152236887;
        Tue, 13 May 2025 09:03:56 -0700 (PDT)
Received: from thinkpad (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442d67d5c09sm175331185e9.7.2025.05.13.09.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 09:03:56 -0700 (PDT)
Date: Tue, 13 May 2025 17:03:54 +0100
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>, 
	Marek Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Alan Douglas <adouglas@cadence.com>, 
	Wilfred Mallawa <wilfred.mallawa@wdc.com>, Damien Le Moal <dlemoal@kernel.org>, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/6] PCI: endpoint: IRQ callback fixes and cleanups
Message-ID: <lds72okw4m4novwi2ysaomolph45dzuuyxdcyl6llpruie7a5t@4v6ol6qtu6w3>
References: <20250513073055.169486-8-cassel@kernel.org>
 <20250513102522.GB2003346@rocinante>
 <aCM7lWQiwJBwamEp@ryzen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aCM7lWQiwJBwamEp@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250513_090358_446212_569A0174 
X-CRM114-Status: GOOD (  10.84  )
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

T24gVHVlLCBNYXkgMTMsIDIwMjUgYXQgMDI6MzE6MTdQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBPbiBUdWUsIE1heSAxMywgMjAyNSBhdCAwNzoyNToyMlBNICswOTAwLCBLcnp5c3p0
b2YgV2lsY3p5xYRza2kgd3JvdGU6Cj4gPiBIZWxsbywKPiAKPiBIZWxsbwo+IAo+ID4gCj4gPiA+
ICAgUENJOiBkd2M6IGVwOiBGaXggYnJva2VuIHNldF9tc2l4KCkgY2FsbGJhY2sKPiA+ID4gICBQ
Q0k6IGNhZGVuY2UtZXA6IEZpeCBicm9rZW4gc2V0X21zaXgoKSBjYWxsYmFjawo+ID4gPiAgIFBD
STogZW5kcG9pbnQ6IGNsZWFudXAgZ2V0X21zaSgpIGNhbGxiYWNrCj4gPiA+ICAgUENJOiBlbmRw
b2ludDogY2xlYW51cCBzZXRfbXNpKCkgY2FsbGJhY2sKPiA+ID4gICBQQ0k6IGVuZHBvaW50OiBj
bGVhbnVwIGdldF9tc2l4KCkgY2FsbGJhY2sKPiA+ID4gICBQQ0k6IGVuZHBvaW50OiBjbGVhbnVw
IHNldF9tc2l4KCkgY2FsbGJhY2sKPiA+IAo+ID4gTm90ZSB0aGF0IFBDSSBwcmVmZXJzIHRvIGNh
cGl0YWxpc2UgZmlyc3QgbGV0dGVyIG9mIHRoZSBzdWJqZWN0Lgo+IAo+IERvIEkgbmVlZCB0byBy
ZXNlbmQgb3IgY2FuIHNvbWUgb2YgdGhlIG1haW50YWluZXJzIGZpeCB0aGlzIHVwIHdoaWxlIGFw
cGx5aW5nPwoKSSB3aWxsIGZpeCBpdCB1cCB3aGlsZSBhcHBseWluZy4KCi0gTWFuaQoKLS0gCuCu
ruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
