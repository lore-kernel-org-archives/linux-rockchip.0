Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A96E4E77197
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Jan 2025 16:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6PU26K8+7EcSbfoPe7l0h7fcCsGodKsgbV/8c2f9zc=; b=k/b6jJLsskCCEX
	qkpU+bGbM431gTw6BsLFc8tpT5XwIvliqdQ3Jl9Kily3/zvkOkP7WEAE/FzBh0vAgZXKX2gPHQimR
	c2QkFmIwaFQi8gwH6cfF5Qbn5ZY2BeybWxYPjahURFseomoR1ZNxLKGeMsLN+6JqeOTjZSyxIZ3pn
	WWH2MfbMV2uzGfQp9s5hfXnlF0d+7QN1rp8R5tJ84LKutaIsBI7tyhgodXg+9OyTgiAC+6tWNNGYQ
	IZMZaqL+tneO+3SP+S3/eiNmYbW5EOex43K01P7XhKae6cLJ2Yl56qLaOYMStdVdxPUsLrK8kb5tb
	v/DMM5XIa4h8U1RUd+Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUTb0-0000000H6TS-0sAq;
	Sun, 05 Jan 2025 16:35:22 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUTay-0000000H6Sl-08mA
	for linux-rockchip@lists.infradead.org;
	Sun, 05 Jan 2025 16:35:21 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-21649a7bcdcso187507375ad.1
        for <linux-rockchip@lists.infradead.org>; Sun, 05 Jan 2025 08:35:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736094918; x=1736699718; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PnREJXO8gdOnlDXn6hPd7bSDzdru7IQfI4OFlA05/Zk=;
        b=Ny45JJQ7eZ1xje5Gay/1cqlIPgOdyrB+7J7ceIe1Q/NYujQ2TCFCPqbnsAHGs1Ir19
         fNstl5mYbg74glVA+zclpVCxJwZo1I0C+db7Ns+UR7SSbPkK5PvodLQpmTD9ewpUadzF
         VNWY9PaFEM2pZtayJNFQS53Buxe16Y6VsNAac8m8Lio7ypM4O+uiLxJSTqUEA63joXIR
         vsNJ/VtIDYGVviq4TLUmP8lgPye4OIR63tzKQjiyR+hfNZMRr5AxWIInQCbSwVkqWUuN
         qP+1IFbW4DO1HPZi/VnmpKpeODvvXyQkhKC50AmYMlKIlWXgkdN8jIYnNVSjlQyRyxP3
         rrfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736094918; x=1736699718;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PnREJXO8gdOnlDXn6hPd7bSDzdru7IQfI4OFlA05/Zk=;
        b=WiA60dqCG5jo3vMDX54Ja0kPcTpI2TFEcKFfGwu+ee0m7bYxyDsnYmc+46xqE/KZpD
         1Bos3GmOi+KYTRoLUIU4gT9wp1q2tI4FHt2IVM5G30ZlVjsuh+9Zs15ItLYKlxjbolAx
         oF6TinIlrTnaeb7MsQu0vXgCOLENDbTZDj05jfUsOZkzzd/6q7Z1BwrdbL88JWiny70M
         gGHuU9ktQd7ERs7nc0eouk0o3/Tsy/pWUVmVAHWzGWaEuRenLGvriniWEhkbrygk4VOc
         HOzy6V/RgZ98lQFHVmwNeoDdemMQM79IOqqnwJQUBmvZvvp6+x1Gea/SCwIYSOA7mipR
         yaKw==
X-Forwarded-Encrypted: i=1; AJvYcCX1VqasMIAPJQLGfD/qRAO57EjIUz+y6q+qnfmaJfYjxWZkbg7/P2cI7xUHg9KplKCkYn1jOKAqh/Ud9II3Ag==@lists.infradead.org
X-Gm-Message-State: AOJu0YxSH/xRhlxeuZHaPfgHY6iNwVYgaqkOeMqq0btyOgiE3fSUZTFj
	6VL9j4v+nFDNb0t0asDsLe88F4rXHWQHkCJbecTIPra5lDrsCzTWcFmucmDp/A==
X-Gm-Gg: ASbGnctPytSj/rCYYkNK5WYxXf48ik6B8K9jHBzdTL1Xp7OSDAyPxNIkZtw1r2J4yjq
	p3iH/CvhZAtSd0S+MFl9F9SRBBAkRFjKQOWrqx+rin2TZIoznMH/9lv7QKjxTCFK/mazJbbuShy
	BV/dbNk3yqZSz9wMIGFVhpZ1dQiJ814/wVCRkMoAT3i5ZohcUXb0kAc5+OA/qzky9EfHhXc5qMa
	ykUiJrnncxpePGrXjTpGvw1NxjmZVHHAiZkmx2IWTpQOeo1JIU2tJRHmMWkYrFyVCxWZw==
X-Google-Smtp-Source: AGHT+IEOtAp4w31CjTLB1aFWoVsatu6IG9r4c5kd2CVIdLrHft5tD4dMe9HJZQJaorB/J3Udvac1sQ==
X-Received: by 2002:a17:903:2cc:b0:216:2e5e:971d with SMTP id d9443c01a7336-219e70dc3f7mr692735935ad.51.1736094918605;
        Sun, 05 Jan 2025 08:35:18 -0800 (PST)
Received: from thinkpad ([117.193.213.165])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc9cde72sm277254345ad.130.2025.01.05.08.35.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 08:35:18 -0800 (PST)
Date: Sun, 5 Jan 2025 22:05:11 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Niklas Cassel <cassel@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Enable async probe by default
Message-ID: <20250105163511.rwer5pl6tevw4zp2@thinkpad>
References: <20240809073610.2517-1-linux.amoon@gmail.com>
 <Z3fKkTSFFcU9gQLg@ryzen>
 <CANAwSgS5ZWGTP+A11r_qFSrjWZH_DqsM89MLiP+1VAxhz+e+2A@mail.gmail.com>
 <Z3fzad51PIxccDGX@ryzen>
 <CANAwSgQEunirUf3O3FJJAUsQu9mQYD_Y40uJ_zMYDZYVy5J=wQ@mail.gmail.com>
 <Z3f4JQZ6yYV1BJ-b@ryzen>
 <CANAwSgRTcHuDNLvPJAs7ZaV-NnepeOkHj_kVc5OAJtP03hd6pQ@mail.gmail.com>
 <Z3f95RXj7GhZZHEP@ryzen>
 <CANAwSgQEb7rWFaeEO3Mb8LAwK6A5mrCyQFEysmSpeVdhoRWrtw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgQEb7rWFaeEO3Mb8LAwK6A5mrCyQFEysmSpeVdhoRWrtw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250105_083520_137104_DD27F40D 
X-CRM114-Status: GOOD (  22.97  )
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

T24gRnJpLCBKYW4gMDMsIDIwMjUgYXQgMDg6NTk6NTFQTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiBIaSBOaWtsYXMKPiAKPiBPbiBGcmksIDMgSmFuIDIwMjUgYXQgMjA6NDAsIE5pa2xhcyBD
YXNzZWwgPGNhc3NlbEBrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4gPiBPbiBGcmksIEphbiAwMywg
MjAyNSBhdCAwODozNjoxOFBNICswNTMwLCBBbmFuZCBNb29uIHdyb3RlOgo+ID4gPiA+ID4KPiA+
ID4gPiA+IFdlIG5lZWQgdG8gZW5hYmxlIHRoZSBHTUFDIFBIWSBhbmQgcmVzZXQgaXQgdXNpbmcg
dGhlIHByb3BlciBHUElPIHBpbgo+ID4gPiA+ID4gKFBDSUVfUEVSU1RfTCkuCj4gPiA+ID4gPiBQ
bGVhc2UgcmVmZXIgdG8gdGhlIHNjaGVtYXRpYyBmb3IgbW9yZSBkZXRhaWxzLgo+ID4gPiA+Cj4g
PiA+ID4gVGhlIFBFUlNUIyBHUElPIGlzIGFscmVhZHkgYXNzZXJ0ZWQgKyBkZWFzc2VydGVkIGZy
b20gdGhlIFBDSWUgUm9vdCBDb21wbGV4Cj4gPiA+ID4gKGhvc3QpIGRyaXZlcjoKPiA+ID4gPiBo
dHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvYmxvYi92Ni4xMy1yYzUvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jI0wxOTEtTDIwNgo+ID4gPiA+Cj4g
PiA+ID4gd2hpY2ggd2lsbCBjYXVzZSB0aGUgZW5kcG9pbnQgZGV2aWNlIChhIFJUTDgxMjUgTklD
IGluIHRoaXMgY2FzZSkKPiA+ID4gPiB0byBiZSByZXNldCBkdXJpbmcgYm9vdHVwLgo+ID4gPiA+
Cj4gPiA+IFRoYW5rcyBmb3IgbGV0dGluZyBtZSBrbm93LiBJdCBzZWVtcyBsaWtlIGEgd29ya2Fy
b3VuZC4KPiA+ID4gSSdsbCB0cnkgdG8gZGlzYWJsZSB0aGlzIGFuZCB0ZXN0IGl0IGFnYWluLgo+
ID4gPgo+ID4gPiBNeSBwb2ludCBpcyB0aGF0IHdlIGhhdmVuJ3QgZW5hYmxlZCB0aGUgR01BQyBQ
SFkgKGRldmljZSBub2RlcykKPiA+ID4gYW5kIG11c3QgcHJvcGVybHkgcmVzZXQgdGhlIEdNQUMu
Cj4gPiA+Cj4gPiA+IFdlJ3JlIHJlbHlpbmcgb24gdGhlIGNvZGUgYWJvdmUgaGFjayB0byBkbyB0
aGF0IGpvYi4KPiA+Cj4gPiBJIGRvIG5vdCB0aGluayBpdCBpcyBhIGhhY2suCj4gPgo+ID4gSWYg
eW91IGxvb2sgaW4gbW9zdCBQQ0llIGNvbnRyb2xsZXIgZHJpdmVycywgdGhleSB0b2dnbGUgUEVS
U1QgYmVmb3JlCj4gPiBlbnVtZXJhdGluZyB0aGUgYnVzOgo+ID4gJCBnaXQgZ3JlcCBncGlvZF9z
ZXRfdmFsdWUgZHJpdmVycy9wY2kvY29udHJvbGxlci8KPiA+Cj4gCj4gT2ssIHVuZGVyc3Rvb2Qu
IEhvd2V2ZXIsIHdlIGhhdmUgbXVsdGlwbGUgcmVzZXQgbGluZXMgcGVyIGNvbnRyb2xsZXIsCj4g
c28gdGhlIFBDSWUgZHJpdmVyIHdpbGwgcmVzZXQgdGhlc2UgbGluZXMgdXNpbmcgZ3Bpb2Rfc2V0
X3ZhbHVlLgo+IAo+IFBDSUUzMFg0X1BFUlNUbl9NMV9MCj4gUENJRTMweDFfMF9QRVJTVG5fTTFf
TAo+IFBDSUVfUEVSU1RfTAoKUEVSU1QjIGdwaW8gaXMgdW5pcXVlIHBlciBjb250cm9sbGVyIGlu
c3RhbmNlIGFuZCB3aWxsIGJlIGFzc2VydGVkL2RlYXNzZXJ0ZWQKYnkgdGhlIFBDSWUgY29udHJv
bGxlciBkcml2ZXIgaXRzZWxmLiBFbmRwb2ludCBkcml2ZXJzIHNob3VsZCBub3QgdG91Y2ggdGhl
c2UuCgpBbmQgbW9zdCBvZiB0aGUgUENJZSBlbmRwb2ludCBkZXZpY2VzIGRvIG5vdCBuZWVkIHRv
IGJlIGRlc2NyaWJlZCBpbiBkZXZpY2V0cmVlCmFzIFBDSWUgaXMgYSBkaXNjb3ZlcmFibGUgYnVz
LiBCdXQgd2UgZG8gZGVmaW5lIHNvbWUgb2YgdGhlbSBpZiB0aGV5IHJlcXVpcmUgYW55CnNwZWNp
YWwgYm9hcmQgY29uZmlndXJhdGlvbi4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCu
o+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
