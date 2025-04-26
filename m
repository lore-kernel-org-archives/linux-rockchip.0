Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77BEEC369CB
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Apr 2025 16:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bctwast9hhFDLBCXMZv8PD4w1Dof+sJNB1wQDOAxuuw=; b=kpBNktFVAD/9Db
	EkxMziuC/S9HX7sNWLJLyzi7j6geJo5H3FD1HfxKNMkIER9l8IUTD6KsF5mzzwnb4b+6JFLVSiZ3D
	HmvA809j09PdcjVO6FCcZOl3LRxAkBy3WWKLJHr2MFNrcEZ1TmGWhcto4yrTdbIvSbTg3y9nY40jI
	GKZZ57vffcBJzunPzxosBxfJW4rAggsDzGU56quox6jrqcg7cwWwdyhpKIzgGY8PiSC0mxJotiEQP
	LfxiOgQ7aFOCxdXIXGgCrQurhoRK6wop4whgSRfHkSMdKlGdklezpA2SPC6rOGt9qC+BGb6OPTJHw
	FpViKP++KjPljRO5LWhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8iR9-00000002I1i-2UDh;
	Sat, 26 Apr 2025 16:31:31 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8iR7-00000002I19-0rNo
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Apr 2025 16:31:30 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-22c336fcdaaso40177165ad.3
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Apr 2025 09:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745685087; x=1746289887; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Frbgk8epMXu33rseJMhLh7pjks/wfIb6gug4Sy+yOUI=;
        b=wkZABavblLVTiIh/vf0PbQVUmbG0A0ugmM/asd0USEYrVhUDHNCwVmNRQopcB1n2PU
         yTTsFT6Y5Bz+GyGl1vve7RHUyEf7NZ2XslHK7mL2oRVYKImHCSplWJXTk2O4ZVW2Aodc
         Vbe8xnRPZACOOUmTLbC2krFD1SZNlP5wcMsP3c3GR0tocv7o3BV/Mt6SQltoU9FEv3ZY
         SL+NkYbNl8f5X+cERnhUbi+JJoZzje9RoL+baYVesg/F3XEkzg9Gla9Hw9emQNU0roCs
         ebv0kZBsP4JjQnto0ccqn83mVx3xU9I+LpXxw8q2/R0Lud2T2cZ0o5ncSxSx//3ILTvD
         rhIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745685087; x=1746289887;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Frbgk8epMXu33rseJMhLh7pjks/wfIb6gug4Sy+yOUI=;
        b=fFRJ1WGFn5u7fV2MwjVcUcPadGHGMQ4G4j2TbpokFEJ2jYM9QIwj3+krpAYQqopnNt
         KhPFFnq04piKDN0V71joffBjLIv0XGP8wDR7xr7XWEGDGAAo0OOnI30CtcQWPvh3VE6+
         Giio60Ocde7TvYGGBkvhE9FCiI2fpyN0ZENbvkYMi/h1y4JmRKQ751chKh5gwSgG+Cpq
         1V+6T6jy+LEwsjKZvaBHmezkAQgm0nrVg1qwqcI4N094+6RA0htKf+5f+SFD2kW3bGph
         IpkbJEnb533rsBd3hKoxxZ425g8S61o52QLIydNb6iVY6O260QRpuuqfgPU+30QLn64o
         lIXg==
X-Forwarded-Encrypted: i=1; AJvYcCX1Ci40S9APrBgjxba2RoEPViOom4wGNuCU6PNG4VpbK4BlNofdQJB+EXiVlj5RFkn/50ue6alL9D8aDNU8LQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzhmXUJfKhNeGRQ2lbhjxrBbP2y7/R4WFaISfnehBpL3ALSy2MA
	ZSLMg5VoStW1y/crqFy6D4FKHFeU2WdnjTWfyWy9RO8S2jO3ijeZpNe/ChGExGujHpMfHzpRW7M
	=
X-Gm-Gg: ASbGncvatDv4FzzrjpvORH0NH6/07tBKScg5LEgOoFySOtlZ2D/zHu9Fe5hXR8RvyPl
	96axk2I7qUHtBwHUvRJ9jIihsRdqanu1aAc/R0W7EaXJDFyUQjKGYKCx3bf4WAYG3YzLnmSzbeH
	9yYol7mQWei1qB09IrDeHQxcQfrWyoMuNn3CskBuJSh4EUXMiEdBBfJMrVssNTcM5Jm5oFgr9Tm
	N/OORA4bZlI7H49kbmmcYZXLAz/yREqKE+ykkQz2XIEBk9f6Ul8PtZ6akaKg4QXEfleCCVsTB2R
	DLSfNi6xPKEOag15uaOStkdil2w/MjbkaSo/OjIDJlDd8sKoGyKH
X-Google-Smtp-Source: AGHT+IF6VUEmpTBmDZo5b6hBh4vSWZqVx3hBf1jF+ALj6XNykip/pCqBWItQlyV5zJXFq4smqjxuhA==
X-Received: by 2002:a17:903:244a:b0:220:faa2:c917 with SMTP id d9443c01a7336-22dbf62c39bmr97410935ad.34.1745685087383;
        Sat, 26 Apr 2025 09:31:27 -0700 (PDT)
Received: from thinkpad ([120.60.143.241])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db4d76c96sm51466445ad.38.2025.04.26.09.31.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Apr 2025 09:31:26 -0700 (PDT)
Date: Sat, 26 Apr 2025 22:01:21 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Niklas Cassel <cassel@kernel.org>, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 1/3] PCI: dw-rockchip: Remove PCIE_L0S_ENTRY check
 from rockchip_pcie_link_up()
Message-ID: <hix7wmbkm2lccidzlq3tmpw4q7ul7z6s5gajzd36l6ts43ym6e@2435govdgcmo>
References: <1744850111-236269-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1744850111-236269-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250426_093129_259239_633488ED 
X-CRM114-Status: GOOD (  18.34  )
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

T24gVGh1LCBBcHIgMTcsIDIwMjUgYXQgMDg6MzU6MDlBTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IFR3byBtaXN0YWtlcyBoZXJlOgo+IDEuIDB4MTEgaXMgTDAgbm90IEwwUywgc28gdGhlIG5h
bWluZyBpcyB3cm9uZyBmcm9tIHRoZSB2ZXJ5IGJlZ2lubmluZy4KPiAyLiBJdCdzIHRvdGFsbHkg
YnJva2VuIGlmIGVuYWJsaW5nIEFTUE0gYXMgcm9ja2NoaXBfcGNpZV9saW5rX3VwKCkgdHJlYXQK
PiBvdGhlciBzdGF0ZXMsIGZvciBpbnN0YW5jZSwgTDBTIG9yIEwxIGFzIGxpbmsgZG93biB3aGlj
aCBpcyBvYnZpb3VzbHkKPiB3cm9uZy4KPiAKPiBSZW1vdmUgdGhlIGNoZWNrLgo+IAo+IEZpeGVz
OiAwZTg5OGViOGRmNGUgKCJQQ0k6IHJvY2tjaGlwLWR3YzogQWRkIFJvY2tjaGlwIFJLMzU2WCBo
b3N0IGNvbnRyb2xsZXIgZHJpdmVyIikKClRoaXMgaXMgYSBzdGFibGUgY2FuZGlkYXRlLiBCdXQg
ZG8gbm90IG5lZWQgdG8gcmVzcGluIHRoZSBzZXJpZXMganVzdCBmb3IgYWRkaW5nCnRoZSBzdGFi
bGUgbGlzdC4KCj4gU2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlw
cy5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNh
ZGhhc2l2YW1AbGluYXJvLm9yZz4KCi0gTWFuaQoKPiBSZXZpZXdlZC1ieTogTmlrbGFzIENhc3Nl
bCA8Y2Fzc2VsQGtlcm5lbC5vcmc+Cj4gLS0tCj4gCj4gQ2hhbmdlcyBpbiB2NDoKPiAtIGFkZCBO
aWtsYXMncyByZXZpZXcgdGFnCj4gCj4gQ2hhbmdlcyBpbiB2MzogTm9uZQo+IENoYW5nZXMgaW4g
djI6Cj4gLSBhZGQgRml4ZXMgdGFnCj4gCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aWUtZHctcm9ja2NoaXAuYyB8IDQgKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aWUtZHctcm9ja2NoaXAuYwo+IGluZGV4IGM2MjRiN2UuLjIxZGM5OWMgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gKysrIGIvZHJp
dmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gQEAgLTQ0LDcgKzQ0
LDYgQEAKPiAgI2RlZmluZSBQQ0lFX0xJTktVUAkJCShQQ0lFX1NNTEhfTElOS1VQIHwgUENJRV9S
RExIX0xJTktVUCkKPiAgI2RlZmluZSBQQ0lFX1JETEhfTElOS19VUF9DSEdFRAkJQklUKDEpCj4g
ICNkZWZpbmUgUENJRV9MSU5LX1JFUV9SU1RfTk9UX0lOVAlCSVQoMikKPiAtI2RlZmluZSBQQ0lF
X0wwU19FTlRSWQkJCTB4MTEKPiAgI2RlZmluZSBQQ0lFX0NMSUVOVF9HRU5FUkFMX0NPTlRST0wJ
MHgwCj4gICNkZWZpbmUgUENJRV9DTElFTlRfSU5UUl9TVEFUVVNfTEVHQUNZCTB4OAo+ICAjZGVm
aW5lIFBDSUVfQ0xJRU5UX0lOVFJfTUFTS19MRUdBQ1kJMHgxYwo+IEBAIC0xNzcsOCArMTc2LDcg
QEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2xpbmtfdXAoc3RydWN0IGR3X3BjaWUgKnBjaSkK
PiAgCXN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCA9IHRvX3JvY2tjaGlwX3BjaWUocGNp
KTsKPiAgCXUzMiB2YWwgPSByb2NrY2hpcF9wY2llX2dldF9sdHNzbShyb2NrY2hpcCk7Cj4gIAo+
IC0JaWYgKCh2YWwgJiBQQ0lFX0xJTktVUCkgPT0gUENJRV9MSU5LVVAgJiYKPiAtCSAgICAodmFs
ICYgUENJRV9MVFNTTV9TVEFUVVNfTUFTSykgPT0gUENJRV9MMFNfRU5UUlkpCj4gKwlpZiAoKHZh
bCAmIFBDSUVfTElOS1VQKSA9PSBQQ0lFX0xJTktVUCkKPiAgCQlyZXR1cm4gMTsKPiAgCj4gIAly
ZXR1cm4gMDsKPiAtLSAKPiAyLjcuNAo+IAo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+Cu
qeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
