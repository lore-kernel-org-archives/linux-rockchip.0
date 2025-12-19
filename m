Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE3E0D7877D
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Dec 2025 13:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yLA6choiw27j9bULEI0NxQp6pOdDZgB57OLHaq46vRc=; b=2SUBOt76YEmCeV
	wXcxfdb0RF1cq0cfnT60HlAp4c+4EU/QHH+y2mIj2Yj/znVDuOf5QeyAysYXX7dteR0tlfhmcat5P
	Y2E0ZY18FWUiYoV/RFjDQzwP7fexuOsGosiO/Y+LyQqKqGrT5Cndqi7RMSibLKzJJvAFOcq13HdZk
	ATkTxoU7O4ERBUwm9n7CXoDXOCIaGny9FK0BQQQYF7wfEuQTDkfS7Bg3xICIL7iLCpnWuOZyfvw0v
	+6Gz0CnwMshKL5rupqtd0LXPnJQGGLUJiS+sXTIAIjuc6R8P3Oj1BxsPwDNFB60gz1AWyl0i/M5Ij
	Nadv6ZlVekuQLCfYHspA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWasx-0000000ANGi-3x3w;
	Fri, 19 Dec 2025 13:51:11 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWasu-0000000ANFR-3ZsG
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Dec 2025 13:51:10 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-64c893f3a94so288745a12.0
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 05:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766152266; x=1766757066; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WVY0FTbz4AdN3t8EEt7ziV7biZCYpab1ixrilZdONsw=;
        b=HRZUg2iQI7fApHUn8+lTuXhcBWg1DBwVrKw3Nqz0kFYZkawJVzMbiGtlWDXjiNK+V4
         LdvWkTd4P5B4S5oH1gCu8YlguIiT0On3/xZcEwzETzl+JrDejkpdrsruhTvUz4FB7gth
         J5Rgbmpj1HWbreGDLKaC+WK3Bvup5lz5iokxmqDx4w2ZW/0z5Tugz/AQTEXcvpmX/7XW
         omGtcln9NqYdFkIgcMRue2z/MOK16bNXiVP4xtW3rFK7TkZ4MxVFaEJuW7g/npuS6n70
         B0NnuVQbdDMB/n2rYkdmAa9T25VN1PJGijN5Nw3re1V6iZ2FyQA/nqOVGhXVlDAHn4AU
         pmxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766152266; x=1766757066;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WVY0FTbz4AdN3t8EEt7ziV7biZCYpab1ixrilZdONsw=;
        b=vT6K7qS3opp6jQEcT+yR4uEr/Ddu96tMOQ4CeW4Ya6pjbLs8b0avk89hgmGGcg+93e
         AF3u6v5rWTZ11oG6AcWX2IxnijQADGSHrNaa37DvaD3pBXpUw4fLXGjvIwNpW8hFOm3d
         bvdlBjNXxKzhyH6yWmbzO/8iTd4IG6vOvKoLpi8e1Uk9rAASNyr8UUQwX8x1pFZ+2BNz
         9ZVP/i5+4F43IPw/x2KPWhaHCvQpKsee7iSPXa67pOpJ+HB8n2Ch5hMGFxN6uG1v7IND
         ADKSO2Z1k7J5+q3IUmUhra2eGUSOON0Z2pRz4HMleZtjp1orFpKyqHGXSPBl44BDYhf/
         onrg==
X-Forwarded-Encrypted: i=1; AJvYcCUGBLIgvIJLm2espIjsUEsKNuY/XlT05htfZdbcVONaASk0XjswypqvA30ocGDSfL1a3IG1UmexVJtmx1iMDw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzhLwYm/oOaQOTyV6jN9CKsS9xk3afFwYCIkvQXX+TiKoqOGk4Y
	dDgqTlQXFcPfxTywZ01wBRbcCquGHLUkBv295ufjEO6zJzI2dwYdqJdm
X-Gm-Gg: AY/fxX4XlMk4t8ytEi/JTF+XXWcTE/+IWCEqe44PwY9fh31VohNGbxE5SB3MD23+314
	Qn8OeFKMR4ts4oAVwlNpIzA1G2qmr+Fz1EoHjH+Voex+9metVw+QWf1wJd81JjYIMxu/CuRFpVp
	+Bjc3+gDRZHPnAHiVsI+6JB2zsiLkP1PchqRSN5Rh+/+ITLeTLJGqymVTqAL3aWDT7YKXus3ncu
	Yzym/zGxiDw4r1bO2yaK1H07zMYiVpaDvEXV1MX/2b0m27lY+h8rFDlZvlnM92c9GLLOXeZtV/X
	4VDtMKl1NY6UulAuNSmqVHaiqMnSYY/aTFbIFSgtPFeVWLGHY80MnZwEAb3+NbyBCqmSNbwEbVw
	vbYay9S5F3btkFU/oALU+aRoAsG93xKadUK6cNGBUQpgsaqu+0GKA/6fUbF8Y6O4LYoXqcQOBJH
	g1PbUxM5wPZP72wAqU3jrXJwEg8x7VT/zO00QDTBVLHPUoZlDgifWf5SgzSRDYaibn
X-Google-Smtp-Source: AGHT+IHqGj9nyeirOfNEOBoQJdeIZKX2jxqMX1La5bEetWOpLjaUzix23G3qWZHuR52h5YIkt2/e2A==
X-Received: by 2002:a17:907:96a2:b0:b76:afa4:933f with SMTP id a640c23a62f3a-b80205de9dcmr597496066b.22.1766152266241;
        Fri, 19 Dec 2025 05:51:06 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.play.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ae2dbesm244601566b.29.2025.12.19.05.51.04
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Dec 2025 05:51:05 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Subject: Re: [PATCH v7 00/17] media: rkvdec: Add support for VDPU381 and
 VDPU383
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20251218232829.337811-1-detlev.casanova@collabora.com>
Date: Fri, 19 Dec 2025 14:50:51 +0100
Cc: linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Heiko Stuebner <heiko@sntech.de>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Ricardo Ribalda <ribalda@chromium.org>,
 Hans Verkuil <hverkuil@kernel.org>,
 Yunke Cao <yunkec@google.com>,
 Hans de Goede <hansg@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Pavan Bobba <opensource206@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 James Cowgill <james.cowgill@blaize.com>,
 linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com,
 Jonas Karlman <jonas@kwiboo.se>
Message-Id: <219DE002-BE77-4D28-9BC6-9124F099F211@gmail.com>
References: <20251218232829.337811-1-detlev.casanova@collabora.com>
To: Detlev Casanova <detlev.casanova@collabora.com>
X-Mailer: Apple Mail (2.3826.700.81)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_055108_914704_3D26A3C7 
X-CRM114-Status: GOOD (  15.84  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IERldGxldiBDYXNhbm92YSA8ZGV0bGV2LmNh
c2Fub3ZhQGNvbGxhYm9yYS5jb20+IHcgZG5pdSAxOSBncnUgMjAyNSwgbyBnb2R6LiAwMDoyODoK
PiAKPiBUaGVzZSB2YXJpYW50cyBhcmUgZm91bmQgcmVzcGVjdGl2ZWx5IGluIHRoZSBSSzM1ODgg
YW5kIFJLMzU3NiBTb0NzLgo+IFRoaXMgcGF0Y2ggb25seSBhZGRzIHN1cHBvcnQgZm9yIEgyNjQg
YW5kIEgyNjUgaW4gYm90aCB2YXJpYW50cy4KPiAKPiBBcyB0aGVyZSBpcyBhIGNvbnNpZGVyYWJs
ZSBwYXJ0IG9mIHRoZSBjb2RlIHRoYXQgY2FuIGJlIHNoYXJlZCB3aXRoIHRoZQo+IGFscmVhZHkg
c3VwcG9ydGVkIHJrdmRlYyBkZWNvZGVyIGRyaXZlciwgdGhlIHN1cHBvcnQgZm9yIHRoZXNlIHZh
cmlhbnRzCj4gaXMgYWRkZWQgaGVyZSByYXRoZXIgdGhhbiB3cml0aW5nIGEgbmV3IGRyaXZlci4K
PiAKPiBUaGlzIHBhdGNoIHNldCB1c2VzIHRoZSBuZXdseSBpbnRyb2R1Y2VkIGhldmNfZXh0X3Nw
c19bbHNddF9ycHMgdjRsMgo+IGNvbnRyb2xzIGZvciBIRVZDLgo+IFRoZXJlZm9yZSwgYSBwYXRj
aGVkIHZlcnNpb24gb2YgdXNlcnBhY2UgdG9vbHMgaXMgbmVlZGVkIGZvciBIRVZDCj4gc3VwcG9y
dCAoYWRkZWQgZm9yIEdTdHJlYW1lclsxXSBhbmQgaW4gYW4gZWFybHkgc3RhZ2UgZm9yIEZGbXBl
Z1syXSkuCj4gCj4gVGhlIERUUyBjaGFuZ2VzIGNhbiBiZSBmb3VuZCBpbiBhbm90aGVyIHBhdGNo
IHNldDogWzNdCj4gCj4gWzFdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZ3N0cmVh
bWVyL2dzdHJlYW1lci8tL21lcmdlX3JlcXVlc3RzLzkzNTUKPiBbMl06IGh0dHBzOi8vZ2l0bGFi
LmNvbGxhYm9yYS5jb20vZGV0bGV2L2ZmbXBlZwo+IFszXTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvYWxsLzIwMjUxMDIwMjEyMDA5Ljg4NTItMS1kZXRsZXYuY2FzYW5vdmFAY29sbGFib3JhLmNv
bS8KPiAKCkRldGxldiwKCkZZSToKCkluIG15IHRlc3RiZWQgd2l0aCAKCmkuIHY3IG9mIFsxXSBv
biBtYWlubGluZSA2LjE4LjIKaWkgZmZtcGVnOCB2NGwyX3JlcXVlc3QgWzJdCmlpaS4gbXl0aHYg
YXMgcGxheWVyIFszXQppdi4gbWluaW15dGgyIGFzIGRpc3RybyBbNF0Kdi4gTk8gYXBwbGllZCB5
b3VycyBmZm1wZWcgc3BzL3JwcyBoaW50aW5nIFs1XSAoYXMgaSdtIG9uIGZmbXBlZzgpCgpJIHJ1
biBzZXQgb2YgbXkgbXBlZzIvaDI2NC9oZXZjL3ZwOC92cDkgc2FtcGxlcyBvbjogcmszMzI4LiBy
azMzOTksIHJrMzU2NiwgcmszNTc2LCByazM1ODggYW5kIGg2MTYgKGp1c3QgZm9yIGJyaWVmIHRl
c3QgZm9yIHBvdGVudGlhbCBjcm9zcy1yZWdyZXNzaW9ucykKClJlc3VsdHM6CgphLiByazMzMjg6
IG5vIGFueSByZWdyZXNzaW9uczsgYWxsIHNhbXBsZXMgYXJlIGRlY29kZWQgb2sKCmIuIHJrMzM5
OTogbm8gYW55IHJlZ3Jlc3Npb25zOyBhbGwgc2FtcGxlcyBhcmUgZGVjb2RlZCBvawoKYy4gcmsz
NTY2OiBubyBhbnkgcmVncmVzc2lvbnMgKGUuZy4gaW4gdnA5LiB2NiBhbmQgb2xkZXIgd2VyZSBy
ZWdyZXNzaW5nOyB2NyBpcyBvaykgIApjLjEgaDI2NDogYWxsIG9rCmMuMiBoZXZjOiBzYW1wbGVz
IHdpdGhvdXQgbG9uZy10ZXJtIHNwcy9ycHM6IGFsbCBvay4KYy4zIGhldmM6IHNhbXBsZXMgd2l0
aCBsb25nLXRlcm4gc3BzL3JwczogdjcgaXMgYSBiaXQgcmVncmVzc2luZyBoZXJlOiBpdCBnaXZl
cyBtZSBzb21ldGltZXMga2VybmVsIG9vcHMgcmVxdWlyaW5nIGh3LiByZXNldCB0byBicmluZyBk
ZWNvZGVyIGJhY2sgdG8gbGl2ZS4gCkV4ZW1wbGFyeSBvb3BzOiBodHRwczovL3Rlcm1iaW4uY29t
L3VwanUKT2xkZXIgdmVycyBvZiB5b3VyIGNvZGUgd2VyZSBoYW5kbGluZyBzdWNoIGNhc2VzIHdp
dGhvdXQgbmVlZHMgb2YgaHcuIHJlc2V0CgpkLiByazM1NzY6CmQuMTogaDI2NDogd29ya3Mgb2sg
LSBidXQgcmFuZG9tbHkgaSdtIGdldHRpbmcgcGxheWJhY2sgd2l0aCBkaXN0b3J0aW9ucyBsaWtl
IHRoaXM6IGh0dHBzOi8vcG9zdGltZy5jYy9ZaDhEamMzTC4gaXQgaXMgYXZkLiAxIHBlciBmZXcg
cGxheWJhY2tzLgpkLjI6IGhldmM6IHRoZSBzYW1lIGxpa2UgYy4xIGFuZCBjLjIKCmUuIHJrMzU4
OAplLjE6IGgyNjQ6IGFsbCBvawplLjI6IGhldmM6IHRoZSBzYW1lIGxpa2UgYy4xIGFuZCBjLjIK
ICAgCmcuIGg2MTYgd2l0aCBjZWRydXM6IGFsbCBvay4KCmJ0dzogCkFkZGluZyB0byBbMV0gdnA5
IGFuZHJvaWQgY29kZSBbNl0gb2ZmZXJzIG1lIG5pY2Ugd29ya2luZyB2cDkgaHdkZWMgYWNjZWxs
IG9uIHJrMzU2Ni8zNTg4LiAgCgpHcmVhdCB3b3JrIQoKWzFdIGh0dHBzOi8vZ2l0bGFiLmNvbGxh
Ym9yYS5jb20vZGV0bGV2L2xpbnV4Ly0vY29tbWl0cy9hZGQtdmRwdTM4MS1hbmQtMzgzLXRvLXJr
dmRlYy12NwpbMl0gaHR0cHM6Ly9jb2RlLmZmbXBlZy5vcmcvS3dpYm9vL0ZGbXBlZy9zcmMvYnJh
bmNoL3Y0bDItcmVxdWVzdC1uOC4wLjEKWzNdIGh0dHBzOi8vZ2l0aHViLmNvbS9NeXRoVFYvbXl0
aHR2Cls0XSBodHRwczovL2dpdGh1Yi5jb20vd2FycG1lL21pbmlteXRoMgpbNV0gaHR0cHM6Ly9n
aXRsYWIuY29sbGFib3JhLmNvbS9kZXRsZXYvZmZtcGVnCls2XSBodHRwczovL2dpdGh1Yi5jb20v
ZHZhYi1zYXJtYS9hbmRyb2lkX2tlcm5lbF9ya19vcGkvY29tbWl0L2ZkMGIxYjE3Y2JkZmNmMGMx
NWJjOWY0MTFjYzcxMjcxMDUxNTdlNTcKICAgCiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
