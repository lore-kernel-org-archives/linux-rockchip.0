Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6471C71136
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 13:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZpWcf9q8RXe+RNsWxKWc1oanEPJvc4hJVOQdovb6qZw=; b=gwveJY+S26bcYr
	nb1nYC2u6LMWXeM6rSeor3yvAyX2TV1FGiYw54r7NDBmf8TMkkK5+mHSyD4XtZhxYFlXl32O5SjcM
	rS8S9lzr5pYe0bTn0zkkhY6dhke4ITV81K14AVvB+BDSgi3keSo0YiVkdYczRGT7B8xmcieGIZPt+
	IXkgpnvzaQVCUFwa6PHlxfd5ygeiZSXvDc+lwRDEEX2R9naoVnzQ1IfEYHV2LrLxX7iDY0rsq+pBu
	VOmUwSgqnrwez8S2QXDiIz3IB7zpGcbtXYAtf95Uz5YoCmFYmMvNZCWHG0bHTkmqLLcHxEMDZM9+y
	7bDMsQ/bcz2TrZmIQYXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPhpY-0000000DMTZ-2sNQ;
	Thu, 12 Jun 2025 13:18:56 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPf4t-0000000CxnG-0kkm;
	Thu, 12 Jun 2025 10:22:36 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-607b59b447bso1416148a12.1;
        Thu, 12 Jun 2025 03:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749723753; x=1750328553; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ELcPuvNKLZu6Ryw5rajS8NLZ+N5vs8CjzH8DFZ2k5qY=;
        b=VaW+o+5WDmlEPHSTfwHmWR3V1fj8UnInGhB/HgxYVB6fCjSSxtA49hTilGQf8w06av
         5eOO006XcpQlx4nkb2+bVrPtuwPxA0h6IF2SXQF5QdUq1QrIW4cZC62YisjoMjyRcvNH
         NfU//yq7Afmivj8mHHVBHteWWk0AqTLh4vwwzPhJ2V/0cH0zy3ANJoLfDc1yXo/mC3c+
         KWK3t2UYdht8d8EjN1BQ6o78u9hywdSRqLpXh7AMUgIB/QqTzKvFg6eYwK39wTWBtaCY
         ilcFE91WFbaE0s0SQI+fvkBCjHpoyQmpuMYiMXImI6oSG41zF9D8NOuUuxp4QleNLHBj
         vGJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749723753; x=1750328553;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ELcPuvNKLZu6Ryw5rajS8NLZ+N5vs8CjzH8DFZ2k5qY=;
        b=miCwyNXJ3HhKkSPKDgW7rXUrjZt9hJUABT/R8zxQu+kqGxlBSO0j7hFcdMZKm4xFB9
         kq46XEMcj5nGk2Lbx62hT3CKLFwyKCfJLWN0R/7b9xQa/ob4QP4ZfO9SKDbsgbXIIeCZ
         L+TeNCIdm4UfzxFJ7OVDTlg/dJu6zJGSQcoYmT/XFkRI0smwogWlt4C6nEMGH5Pvzyag
         L9h0+dO+NOPRmvPkjCi0BoMOFCRqmCf7GobbT5xCS9iRS0KnRnoeUoEFqvTzW4dD3xdj
         JV85B3NwyuD8aB9vefu+fGnxkxi0HngOEGCXm8DBCiJD/tdfPjaXTSyuID8zAKd835QT
         CCoQ==
X-Forwarded-Encrypted: i=1; AJvYcCVO5lWJZUmkqK3L0UDSI/tPTql69mXsXQZpen21zSBl84WyO573g4/KoRzp82oGgrSpwa+8L0utffJHnteWfEQ=@lists.infradead.org, AJvYcCVzKwNp7ECcBF9dpMyZ7+6X/IbX//Xim5PZeenQPOeXMBHjs5he5RtPW9x8absH1k2G1mGDsoti5Wnjbgo8nZRP@lists.infradead.org
X-Gm-Message-State: AOJu0YxHRePTerHZCSOtln94yUyx1rpkbP2/cUGAcW5V02XJOZdy6Kzr
	nZS+2vhsoi166SUtFFefF6nq3KNDJv0F7kzJQDlLunNJriuj03Lt6Bgd
X-Gm-Gg: ASbGnctg6AISAVTh9DbNUcd1INuMSxqTUTLMM1GwD/vEr556jJsPAMr8H1UZaDipyxb
	cODkVYAKMXnWBUIY41CC/ivcwhIrioM2EFW3RJYTv2poaL7FxiJSOAqwstZwwCIYGsAb1tN3N6N
	FEZEW14Uz8xWMPOKsj23qSDpkB71wQJnSJmjywAJ4vGXzaKLYHAtQ+3NwyirWyJrWrz649ICTnO
	f6IKovJgqPsqMRhHCeNlM5g8XDr9yXBHVPgiQtU04uG1A0jYYIZaBAAzZ4lCEXdFY5ATO+Ffbxh
	kB8lUCbGEpJAiiFxeMFGf+TL1sWKsc/6HdKu3Y5y8+NbsS4726L1cnkro533X39egDaosLXMSI1
	w1fS+8LdcRg==
X-Google-Smtp-Source: AGHT+IE0/bTYEFCNhrQjD7YEJLFi+GzwBTgnJRxUstfNcaX5VD81i0FvmEvIypNuTLGINT6BjMUjbg==
X-Received: by 2002:a05:6402:40c5:b0:607:f431:33f4 with SMTP id 4fb4d7f45d1cf-6086b2a46c4mr1919282a12.16.1749723753038;
        Thu, 12 Jun 2025 03:22:33 -0700 (PDT)
Received: from smtpclient.apple ([89.66.237.154])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6086a551a2esm939584a12.1.2025.06.12.03.22.30
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Jun 2025 03:22:32 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add HDMI PHY PLL clock source
 to VOP2 on rk3576
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20250612-rk3576-hdmitx-fix-v1-3-4b11007d8675@collabora.com>
Date: Thu, 12 Jun 2025 12:22:19 +0200
Cc: Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 kernel@collabora.com,
 Andy Yan <andyshrk@163.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Message-Id: <01D5D2D8-392B-4926-884E-1A4FB87C03CF@gmail.com>
References: <20250612-rk3576-hdmitx-fix-v1-0-4b11007d8675@collabora.com>
 <20250612-rk3576-hdmitx-fix-v1-3-4b11007d8675@collabora.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
X-Mailer: Apple Mail (2.3826.600.51.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_032235_216975_35E47D6A 
X-CRM114-Status: GOOD (  20.56  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3Rp
YW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+IHcgZG5pdSAxMSBjemUgMjAyNSwgbyBnb2R6LiAy
Mzo0NzoKPiAKPiBTaW5jZSBjb21taXQgYzg3MWEzMTFlZGYwICgicGh5OiByb2NrY2hpcDogc2Ft
c3VuZy1oZHB0eDogU2V0dXAgVE1EUwo+IGNoYXIgcmF0ZSB2aWEgcGh5X2NvbmZpZ3VyZV9vcHRz
X2hkbWkiKSwgdGhlIHdvcmthcm91bmQgb2YgcGFzc2luZyB0aGUKPiByYXRlIGZyb20gRFcgSERN
SSBRUCBicmlkZ2UgZHJpdmVyIHZpYSBwaHlfc2V0X2J1c193aWR0aCgpIGJlY2FtZQo+IHBhcnRp
YWxseSBicm9rZW4sIGFzIGl0IGNhbm5vdCByZWxpYWJseSBoYW5kbGUgbW9kZSBzd2l0Y2hlcyBh
bnltb3JlLgo+IAo+IEF0dGVtcHRpbmcgdG8gZml4IHRoaXMgdXAgYXQgUEhZIGxldmVsIHdvdWxk
IG5vdCBvbmx5IGludHJvZHVjZQo+IGFkZGl0aW9uYWwgaGFja3MsIGJ1dCBpdCB3b3VsZCBhbHNv
IGZhaWwgdG8gYWRlcXVhdGVseSByZXNvbHZlIHRoZQo+IGRpc3BsYXkgaXNzdWVzIHRoYXQgYXJl
IGEgY29uc2VxdWVuY2Ugb2YgdGhlIHN5c3RlbSBDUlUgbGltaXRhdGlvbnMuCj4gCj4gSW5zdGVh
ZCwgcHJvY2VlZCB3aXRoIHRoZSBzb2x1dGlvbiBhbHJlYWR5IGltcGxlbWVudGVkIGZvciBSSzM1
ODg6IG1ha2UKPiB1c2Ugb2YgdGhlIEhETUkgUEhZIFBMTCBhcyBhIGJldHRlciBzdWl0ZWQgRENM
SyBzb3VyY2UgZm9yIFZPUDIuIFRoaXMKPiB3aWxsIG5vdCBvbmx5IGFkZHJlc3MgdGhlIGFmb3Jl
bWVudGlvbmVkIHByb2JsZW0sIGJ1dCBpdCBzaG91bGQgYWxzbwo+IGZhY2lsaXRhdGUgdGhlIHBy
b3BlciBvcGVyYXRpb24gb2YgZGlzcGxheSBtb2RlcyB1cCB0byA0S0A2MEh6Lgo+IAo+IEl0J3Mg
d29ydGggbm90aW5nIHRoYXQgYW55dGhpbmcgYWJvdmUgNEtAMzBIeiBzdGlsbCByZXF1aXJlcyBo
aWdoIFRNRFMKPiBjbG9jayByYXRpbyBhbmQgc2NyYW1ibGluZyBzdXBwb3J0LCB3aGljaCBoYXNu
J3QgYmVlbiBtYWlubGluZWQgeWV0Lgo+IAo+IEZpeGVzOiBkNzRiODQyY2FiMDggKCJhcm02NDog
ZHRzOiByb2NrY2hpcDogQWRkIHZvcCBmb3IgcmszNTc2IikKPiBDYzogc3RhYmxlQHZnZXIua2Vy
bmVsLm9yZwo+IFNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lv
Y2FsdGVhQGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4gYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1NzYuZHRzaSB8IDYgKysrKy0tCj4gMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NzYuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2
LmR0c2kKPiBpbmRleCA2YTEzZmUwYzM1MTNmYjJmZjdjZDUzNWFhNzBlMzM4NmMzNzY5NmU0Li5i
MWFjMjMwMzVkZDc4OWYwNDc4YmYxMGM3OGM3NGVmMTY3ZDk0OTA0IDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LmR0c2kKPiArKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni5kdHNpCj4gQEAgLTExNTUsMTIgKzExNTUsMTQgQEAg
dm9wOiB2b3BAMjdkMDAwMDAgewo+IDwmY3J1IEhDTEtfVk9QPiwKPiA8JmNydSBEQ0xLX1ZQMD4s
Cj4gPCZjcnUgRENMS19WUDE+LAo+IC0gPCZjcnUgRENMS19WUDI+Owo+ICsgPCZjcnUgRENMS19W
UDI+LAo+ICsgPCZoZHB0eHBoeT47Cj4gY2xvY2stbmFtZXMgPSAiYWNsayIsCj4gICAgICAiaGNs
ayIsCj4gICAgICAiZGNsa192cDAiLAo+ICAgICAgImRjbGtfdnAxIiwKPiAtICAgICAgImRjbGtf
dnAyIjsKPiArICAgICAgImRjbGtfdnAyIiwKPiArICAgICAgInBsbF9oZG1pcGh5MCI7Cj4gaW9t
bXVzID0gPCZ2b3BfbW11PjsKPiBwb3dlci1kb21haW5zID0gPCZwb3dlciBSSzM1NzZfUERfVk9Q
PjsKPiByb2NrY2hpcCxncmYgPSA8JnN5c19ncmY+Owo+IAo+IC0tIAo+IDIuNDkuMAo+IAo+IAo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAKCkNyaXN0aWFuLApJdCBmaXhlcyBmcmFjdGlvbmFsIGhkIG1vZGVzIGZvciBtZSBvbiBy
azM1NzYuClRoeCBmb3IgdGhpcyBmaXghCiAgCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
