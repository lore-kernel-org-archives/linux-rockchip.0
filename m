Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86044C5AE59
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 May 2025 06:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m59c13lt7JRgMgucSbGUxQ/ZFMthIQuxNdvgC++vJD4=; b=NHL37ol5Ghl5OL
	ixIqj1no4G0082k9sZ4B6A0mcTg3Rn3H6i9tI8VvQ+l1Xk0VBbEYei6xnhUu0Hwk2JwnezCUmvfLb
	uYySGGVg+drlVW5EDoGnexeDGVQhSrtEd8ebVuo4amWszGKGBO35lIjLJDQIxlHYTrRG3qqwdSJOP
	cBWt7W6eeGxkq2GZ6S4Y1/MeV2QVZRsMkVXfcRjjBQNeUKz6azvCQetcBq6DjC6KDFEIrNjP9qh0s
	C501ShQIEEhj0kRD9bC0lI81TrwnUxl4mw0Fed3fwg/J8DcGvlUi3QUBZ6dMHmbsITlCtlpRFhgjY
	xcmIDdr7pctx+r1sMfjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLFSa-00000003Prj-1QQq;
	Sat, 31 May 2025 06:12:48 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLFSY-00000003Pr1-0UEk
	for linux-rockchip@lists.infradead.org;
	Sat, 31 May 2025 06:12:47 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-7399838db7fso2545528b3a.0
        for <linux-rockchip@lists.infradead.org>; Fri, 30 May 2025 23:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748671965; x=1749276765; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0xC9CFEE+YUx312k0/EiyveI/Q/YMtl8Jwd16dQuFXI=;
        b=lOpje1LgYrFr6FMkg8TiTSHL1DszRc+V46KW87R0vkXPW+qnwhmNKqaGh5ds+3GNJR
         6ATm3fD31GqiffpkkHNuRhqC1XIg0SbWNstQY+q5XuX5qOX96KsTbM6BBYkZ4cSnwkLJ
         fVG2g7bfN/4fO6og4kbJlxxKuvD1426oaXeVYTI2Fa3Q53eSDoUCyyFxVwJGm19h3CgN
         ap1sG/FrmBms/rzKaoLBTg8scc+GldhlzrrE7TDM1TUvf5nPduroaznZzl4F7Mh8FBhf
         JGl+TuMy8rrhIlFSld6hrbDsDI6h6FfFZfGb0HlMrrNGgUCFh9gttNEEUALCIJh+9UMC
         MryQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748671965; x=1749276765;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0xC9CFEE+YUx312k0/EiyveI/Q/YMtl8Jwd16dQuFXI=;
        b=NCAHIgcZnM6cabP8pQ/RpINS+rYBs3SoVTUwcWqBZPxbv9b7aWV9m8iHl3ga94cZUs
         +hHMaBa1jEQcu1VNAGJSygUgeh8YzNEPRNuO4/10GHoIKED9qdn7oB9uk2W/AJ/W55nA
         aqUYJ6R5klFo0+pST+/c5IbUUhwOGLR/N5SFvAItC/A54LAF9vW0JNpWLvFzDHA1rVXT
         U1FFivCb5CJpFry8znOmiX58FgStwNsCvFaYJrMAscg8KVYHjfqxD//Sbw13hPr1F5f6
         a2/aS2afTAtwwFZWzgs6ZcVSN8VLldXlUn6civS1smqz6vqQoL5XjZufu+BmKQ471eeh
         483g==
X-Forwarded-Encrypted: i=1; AJvYcCVlyjKgVdP5NR9OCorDNl99gXMomSUdOx37rzv/S9rsI/UtjcVBGkSEp9z7dl4IQ1gVbgkVjhIs8kmnYLO0dA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxjdrbeD8a3EGNQR57FGT8Pm3gY+XxJRqL3ldUJMYPRh1pJaC/K
	kviFHp6m9yrmzk36/c7/QF5PsZtCdttXoEkC2kpPG/Nk7crBD+L9WG2gc4dCstVV+A==
X-Gm-Gg: ASbGnct1c70UceVapZJ9oGE4P1dI6NW/Jle84XesU4bpF/ActwIFjE19i5iDOdxiub5
	aEcwYP3PsIdirSsvylxozgW5MuKBwsCCtvb1JUV0s13eJCSBODXvJXALkCxna2MYwG2Ae9aUs7y
	FoCr6cwlBhkmRJqKY+vmGAWQeTwMASdI3XD4TaLv52lQnOY1gsJYn2hECTdEEBz2kEWOr1QMSAh
	R+xaAj+eb/d0qw57uA7kR7UD9c4dsG2mIIiOlX3CTXv6+y38rckld77Gx2uNAEbZ+49F7w1DebH
	HpoD0cGyUDfoXQH93YMD3XKdQx/BQpkcYxXL3H5qG2wv+DbwHVlVwplV3GYLgpQqbvnG6V9K
X-Google-Smtp-Source: AGHT+IE96H8U8bWE8z0seGlz+ce1VhCU9n8V1B9SIIp0uy/rKpHh593gOPlHdV8KFu0tdA5IB8EsVg==
X-Received: by 2002:a05:6a00:8b09:b0:736:4c3d:2cba with SMTP id d2e1a72fcca58-747ad757dc4mr9023047b3a.9.1748671965098;
        Fri, 30 May 2025 23:12:45 -0700 (PDT)
Received: from thinkpad ([120.56.204.95])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747affcf4c5sm3950187b3a.124.2025.05.30.23.12.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 23:12:44 -0700 (PDT)
Date: Sat, 31 May 2025 11:42:40 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Hans Zhang <18255117159@163.com>
Cc: shawn.lin@rock-chips.com, lpieralisi@kernel.org, kw@linux.com, 
	bhelgaas@google.com, heiko@sntech.de, robh@kernel.org, linux-pci@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/3] Fix interrupt log message
Message-ID: <hjckb2qsdz5atx5occqv7m6syg4fnilxhmn4zeq4y5yoqkmdjf@66gudl2chlgk>
References: <20250516145544.110516-1-18255117159@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250516145544.110516-1-18255117159@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_231246_170505_61ECAFC5 
X-CRM114-Status: GOOD (  16.42  )
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

T24gRnJpLCBNYXkgMTYsIDIwMjUgYXQgMTA6NTU6NDFQTSArMDgwMCwgSGFucyBaaGFuZyB3cm90
ZToKPiBEZWFyIE1haW50YWluZXJzLAo+IAo+IERldGFpbGVkIGRlc2NyaXB0aW9ucyBvZiBpbnRl
cnJ1cHRzIGNhbiBiZSBzZWVuIGZyb20gUkszMzk5IFRSTSBkb2MuCj4gSSBmb3VuZCB0d28gZXJy
b3JzIGFuZCBjbGVhbmVkIHVwIHRoZSBkcml2ZXIgYnkgdGhlIHdheS4KPiAKPiBUaGlzIHBhdGNo
IHNlcmllcyBpbXByb3ZlcyB0aGUgbG9nZ2luZyBhY2N1cmFjeSBhbmQgY29kZSBjbGVhbmxpbmVz
cyBvZgo+IHRoZSBSb2NrY2hpcCBQQ0llIGhvc3QgY29udHJvbGxlciBkcml2ZXI6Cj4gCj4gTG9n
IE1lc3NhZ2UgQ2xhcmlmaWNhdGlvbnMKPiAKPiBQYXRjaCAxIGZpeGVzIGEgbWlzbGVhZGluZyBk
ZWJ1ZyBtZXNzYWdlIGZvciB0aGUgUENJRV9DT1JFX0lOVF9VQ1IKPiBpbnRlcnJ1cHQsIHJlcGxh
Y2luZyBhIGR1cGxpY2F0ZWQgIm1hbGZvcm1lZCBUTFAiIG1lc3NhZ2Ugd2l0aCAiVW5leHBlY3Rl
ZAo+IENvbXBsZXRpb24iIHRvIHJlZmxlY3QgdGhlIGFjdHVhbCBlcnJvciBjb25kaXRpb24uCj4g
Cj4gUGF0Y2ggMiBjb3JyZWN0cyB0aGUgdGVybWlub2xvZ3kgZm9yIG5vbi1mYXRhbCBlcnJvcnMs
IHJlbmFtaW5nICJubyBmYXRhbAo+IGVycm9yIiB0byAibm9uIGZhdGFsIGVycm9yIGludGVycnVw
dCByZWNlaXZlZCIgdG8gYWxpZ24gd2l0aCBQQ0llIGludGVycnVwdAo+IHNlbWFudGljcy4KPiAK
PiBDb2RlIENsZWFudXAKPiAKPiBQYXRjaCAzIHJlbW92ZXMgcmVkdW5kYW50IGhlYWRlciBpbmNs
dWRlcyAoZS5nLiwgdW51c2VkIGNsb2NrL3Jlc2V0Cj4gaGVhZGVycykgdG8gc3RyZWFtbGluZSB0
aGUgZHJpdmVyIGFuZCByZWR1Y2UgYnVpbGQgZGVwZW5kZW5jaWVzLgo+IAo+IFRoZXNlIGNoYW5n
ZXMgZW5oYW5jZSBkZWJ1ZyBsb2cgcmVsaWFiaWxpdHksIGVsaW1pbmF0ZSBhbWJpZ3VpdHkgZm9y
Cj4gZGV2ZWxvcGVycy4KPiAKClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1h
bml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgoKLSBNYW5pCgo+IC0tLQo+IENoYW5nZXMg
Zm9yIHYyOgo+IC0gRHJvcCBwYXRjaCBbdjEgMy80XS4KPiAtIFRoZSBvdGhlciBwYXRjaGVzIGhh
dmUgbm90IGJlZW4gbW9kaWZpZWQuCj4gLS0tCj4gCj4gSGFucyBaaGFuZyAoMyk6Cj4gICBQQ0k6
IHJvY2tjaGlwLWhvc3Q6IEZpeCAiVW5leHBlY3RlZCBDb21wbGV0aW9uIiBsb2cgbWVzc2FnZQo+
ICAgUENJOiByb2NrY2hpcC1ob3N0OiBDb3JyZWN0IG5vbi1mYXRhbCBlcnJvciBsb2cgbWVzc2Fn
ZQo+ICAgUENJOiByb2NrY2hpcC1ob3N0OiBSZW1vdmUgdW51c2VkIGhlYWRlciBpbmNsdWRlcwo+
IAo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jIHwgMTMgKyst
LS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlv
bnMoLSkKPiAKPiAKPiBiYXNlLWNvbW1pdDogODJmMmIwYjk3YjM2ZWUzZmNkZGYwZjA3ODBhOWEw
ODI1ZDUyZmVjMwo+IC0tIAo+IDIuMjUuMQo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+Cu
qeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
