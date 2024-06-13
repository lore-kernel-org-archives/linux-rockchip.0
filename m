Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64571C27C4F
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 09:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=poZMSqiADzIoicCrAKrNQQ5XhdmaYPA94/qNpSWlFt0=; b=bLjiL6Gk4F665+
	kSHMH4QnyZNFJPAg18SeauZAwGE24kvO4PRIzfFor/bazLstrqrS5UwuF0N7YefALepY/46negyI0
	xeL8VYgWgx9hLDNBwz2j2jRe7t9fiB5mejyKoQvhs/my6HHQnZaxrAOXPbLHTosOTRhuyptb42X7d
	Ow6FNRkrugeY6dOCTAWV/yqq6TXQjVzqsUJCIKSz1VSKDy6D62hWvMY6KpT0T5blTnsACUc89LQlZ
	DstpkiS40kT1f4JEVSfYchh8ji2JC1XehifTMSL2fMEQFvfFoxXqN8zv++g2vYHsw7azS1bvvC4eY
	7rT8dsUKPX///Yar/3KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHgh1-0000000FwSx-1b8W;
	Thu, 13 Jun 2024 09:24:27 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHggx-0000000FwPP-0avB
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Jun 2024 09:24:24 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-62a2424ecb8so10034147b3.1
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Jun 2024 02:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1718270659; x=1718875459; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5M3ELKqqsvIZfzOpsu+gAgFZkgR2tBXp2Hwr3Ne0u3I=;
        b=jWL0Ed80qTenjm5nrJvoEy0Q6SX/X617ExoZVnDlpa3kWAOVdrITnb/sEJsVIPVznP
         ylcXEA57gqUVQcuK8uJWCcbBPxhv9dc8C+E0AxQ2Ce31MkfmbXJjhI2W1uMAVP5GjeCs
         JzVVxCHDIXZirdmI7QXd3u3KLnmY9qv4JiPPr/kqgiAGqBVLCsNiJUeL9FFIyAfDWEjI
         x9FHRg1PL8xyIsVU7hCOufJ0WcVsCpFsRHRadm764RNgb20DHTW4dWmh5m7IWA/18pBK
         ogbmWv63p/j5aWcRSxlQuvIm7v97nfsa0K1pLGCx1gEJAZ7eM5iotB8bfXSK18Ijp7s9
         h8kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718270659; x=1718875459;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5M3ELKqqsvIZfzOpsu+gAgFZkgR2tBXp2Hwr3Ne0u3I=;
        b=bvj6emZChdkTqgjEt0AuxVayKca6uHZsRLQPEeFnRmK2csjfFNtuxPzTcQw1IxYibD
         rg5KFQixcSOVOhUJJvr3GtTlxQTqI1qFVKoEpV1kKoxrcWIuKjjL4jUv9FPgK5BINRTp
         Y0OMZWf+tyOp8ISwSh78s2B1uj7AbXFxVJu/axJVdd+o0Yf1adMllZaf4uX9k8jh4wl3
         wxi8GWTdv5fwCTrOE+xUiDY7Pmq8JbqEMhNTXSXJxlSVWr38dBnWXORHyAbDtbflwmvi
         TraqDJsJKyAuHD/U2hqTqD//vkamlrvMbj8fVSSrjoGx1jYV1w/nXjxpkF8YOV1YLXJo
         fU4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUQqVy9FzaPW8ymHVX0jnDBHPmxD4nCEAW21pxRPWu2Vj3LfpOK7TxK+M5Qbx58fOl8iFSwup3ueEWCVszg4RQrz/o/d2ExIDAeQf4oG/JCC+GI
X-Gm-Message-State: AOJu0Yzfd/6MfY1BcpZNQVbc0cy+5g8HSUZFIsyL2OT5YyiB1WjUUnBR
	vsvoNQZa4gUQic6Swwa4whRtkOyx4HZ8SlmyoVz2BvK37tExITRfTqMTFanRyr/Vikke5ET3ZD0
	T9jk=
X-Google-Smtp-Source: AGHT+IFRMkNJs2+4sLudSeA1xzMpZpMcR6xYSnqUXg66dUmzaPPwCfW1buw2JVy4HhukfpDa3jjzwA==
X-Received: by 2002:a81:8d45:0:b0:62c:f82b:553f with SMTP id 00721157ae682-62fbaf3874cmr43435457b3.31.1718270659539;
        Thu, 13 Jun 2024 02:24:19 -0700 (PDT)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com. [209.85.128.180])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6311aa22c3asm1206587b3.120.2024.06.13.02.24.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jun 2024 02:24:18 -0700 (PDT)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-62a2424ecb8so10033867b3.1;
        Thu, 13 Jun 2024 02:24:18 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXvsVMCr0IsLG3xax9igsNhS29IRwn+E+kDLYG/lmu+NGuvKNljUJL0yFUF20JQ+OhKe+CCJHKmv6s9zH3m+GeOdi2C6uB3JTJjoyq23IEc6yG4pCXjyODLRjUiTb7O18oh0pr0dCscxEkynCRS/OYUHaUxLZQvLrw=
X-Received: by 2002:a05:6902:2207:b0:dfe:6002:683 with SMTP id
 3f1490d57ef6-dfe67063c46mr4743823276.32.1718270658168; Thu, 13 Jun 2024
 02:24:18 -0700 (PDT)
MIME-Version: 1.0
References: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
 <20240612-6-10-rocket-v1-2-060e48eea250@tomeuvizoso.net> <ffviz6ak6qsn2reg5y35aerzy7wxfx6fzix6xjyminbhfcguus@clszdjakdcjd>
In-Reply-To: <ffviz6ak6qsn2reg5y35aerzy7wxfx6fzix6xjyminbhfcguus@clszdjakdcjd>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Thu, 13 Jun 2024 11:24:06 +0200
X-Gmail-Original-Message-ID: <CAAObsKCx+r5UuESnrPem1Rb1-BF4i8FVwu6uozWhABOWoq+M4Q@mail.gmail.com>
Message-ID: <CAAObsKCx+r5UuESnrPem1Rb1-BF4i8FVwu6uozWhABOWoq+M4Q@mail.gmail.com>
Subject: Re: [PATCH 2/9] iommu/rockchip: Attach multiple power domains
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Oded Gabbay <ogabbay@kernel.org>, Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_022423_441974_CE9ECF5F 
X-CRM114-Status: GOOD (  43.17  )
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

T24gVGh1LCBKdW4gMTMsIDIwMjQgYXQgMjowNeKAr0FNIFNlYmFzdGlhbiBSZWljaGVsCjxzZWJh
c3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IEhpLAo+Cj4gT24gV2VkLCBK
dW4gMTIsIDIwMjQgYXQgMDM6NTI6NTVQTSBHTVQsIFRvbWV1IFZpem9zbyB3cm90ZToKPiA+IElP
TU1VcyB3aXRoIG11bHRpcGxlIGJhc2UgYWRkcmVzc2VzIGNhbiBhbHNvIGhhdmUgbXVsdGlwbGUg
cG93ZXIKPiA+IGRvbWFpbnMuCj4gPgo+ID4gVGhlIGJhc2UgZnJhbWV3b3JrIG9ubHkgdGFrZXMg
Y2FyZSBvZiBhIHNpbmdsZSBwb3dlciBkb21haW4sIGFzIHNvbWUKPiA+IGRldmljZXMgd2lsbCBu
ZWVkIGZvciB0aGVzZSBwb3dlciBkb21haW5zIHRvIGJlIHBvd2VyZWQgb24gaW4gYSBzcGVjaWZp
Ywo+ID4gb3JkZXIuCj4gPgo+ID4gVXNlIGEgaGVscGVyIGZ1bmN0aW9uIHRvIHN0YWJsaXNoIGxp
bmtzIGluIHRoZSBvcmRlciBpbiB3aGljaCB0aGV5IGFyZQo+ID4gaW4gdGhlIERULgo+ID4KPiA+
IFRoaXMgaXMgbmVlZGVkIGJ5IHRoZSBJT01NVSB1c2VkIGJ5IHRoZSBOUFUgaW4gdGhlIFJLMzU4
OC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBUb21ldSBWaXpvc28gPHRvbWV1QHRvbWV1dml6b3Nv
Lm5ldD4KPiA+IC0tLQo+Cj4gVG8gbWUgaXQgbG9va3MgbGlrZSB0aGlzIGlzIG11bHRpcGxlIElP
TU1Vcywgd2hpY2ggc2hvdWxkIGVhY2ggZ2V0Cj4gdGhlaXIgb3duIG5vZGUuIEkgZG9uJ3Qgc2Vl
IGEgZ29vZCByZWFzb24gZm9yIG1lcmdpbmcgdGhlc2UKPiB0b2dldGhlci4KCkkgaGF2ZSBtYWRl
IHF1aXRlIGEgZmV3IGF0dGVtcHRzIGF0IHNwbGl0dGluZyB0aGUgSU9NTVVzIGFuZCBhbHNvIHRo
ZQpjb3JlcywgYnV0IEkgd2Fzbid0IGFibGUgdG8gZ2V0IHRoaW5ncyB3b3JraW5nIHN0YWJseS4g
VGhlIFRSTSBpcwpyZWFsbHkgc2NhbnQgYWJvdXQgaG93IHRoZSA0IElPTU1VIGluc3RhbmNlcyBy
ZWxhdGUgdG8gZWFjaCBvdGhlciwgYW5kCndoYXQgdGhlIGZvdXJ0aCBvbmUgaXMgZm9yLgoKR2l2
ZW4gdGhhdCB0aGUgdmVuZG9yIGRyaXZlciB0cmVhdHMgdGhlbSBhcyBhIHNpbmdsZSBJT01NVSB3
aXRoIGZvdXIKaW5zdGFuY2VzIGFuZCB3ZSBkb24ndCBoYXZlIGFueSBpbmZvcm1hdGlvbiBvbiB0
aGVtLCBJIHJlc2lnbmVkIG15c2VsZgp0byBqdXN0IGhhdmUgdGhlbSBhcyBhIHNpbmdsZSBkZXZp
Y2UuCgpJIHdvdWxkIGxvdmUgdG8gYmUgcHJvdmVkIHdyb25nIHRob3VnaCBhbmQgZmluZCBhIHdh
eSBmbyBnZXR0aW5nCnRoaW5ncyBzdGFibHkgYXMgZGlmZmVyZW50IGRldmljZXMgc28gdGhleSBj
YW4gYmUgcG93ZXJlZCBvbiBhbmQgb2ZmCmFzIG5lZWRlZC4gV2UgY291bGQgc2F2ZSBxdWl0ZSBz
b21lIGNvZGUgYXMgd2VsbC4KCj4gSSB3aWxsIHN0aWxsIHJldmlldyB0aGlzIGFzc3VtaW5nIHRo
ZXJlIGlzIG9uZS4gVGhhdCB3b3VsZCByZXF1aXJlCj4gdG8gZmlyc3Qgb2YgYWxsIHVwZGF0ZSB0
aGUgRFQgYmluZGluZzoKPgo+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pb21t
dS9yb2NrY2hpcCxpb21tdS55YW1sCj4KPiAxLiBJdCBkb2VzIG5vdCBhbGxvdyB1c2luZyAicG93
ZXItZG9tYWluLW5hbWVzIiBwcm9wZXJ0eQo+IDIuIEl0IGxpbWl0cyB0aGUgbnVtYmVyIG9mIGFs
bG93ZWQgcG93ZXItZG9tYWlucyB0byAxCj4gMy4gSXQgbGltaXRzIHRoZSBudW1iZXIgb2YgYWxs
b3dlZCBiYXNlIGFkZHJlc3NlcyB0byAyCj4KPiBMb29raW5nIGF0IHRoZSBEVCBwYXRjaCB5b3Ug
YWxzbyBhZGQgbW9yZSBpbnRlcnJ1cHRzIGFuZCBjbG9ja3MsCj4gd2hpY2ggYXJlIGFsc28gbGlt
aXRlZCBieSB0aGUgYmluZGluZy4gWW91IHNob3VsZCBzZWUgYSBidW5jaCBvZgo+IHdhcm5pbmdz
IHdoZW4geW91IGNoZWNrIHRoZSBEVEJTIHZpYSAnbWFrZSBkdGJzX2NoZWNrJwoKT29wcywgeWVh
aCwgSSB3YXMgbGltaXRpbmcgZHRic19jaGVjayB3aXRoIERUX1NDSEVNQV9GSUxFUywgbm93IEkg
c2VlCnRoZSBlcnJvcnMuCgo+ID4gIGRyaXZlcnMvaW9tbXUvcm9ja2NoaXAtaW9tbXUuYyB8IDM2
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCAzNiBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9tbXUvcm9j
a2NoaXAtaW9tbXUuYyBiL2RyaXZlcnMvaW9tbXUvcm9ja2NoaXAtaW9tbXUuYwo+ID4gaW5kZXgg
ZjU2Mjk1MTViZDc4Li42NzNiMGViYjYyNjIgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2lvbW11
L3JvY2tjaGlwLWlvbW11LmMKPiA+ICsrKyBiL2RyaXZlcnMvaW9tbXUvcm9ja2NoaXAtaW9tbXUu
Ywo+ID4gQEAgLTYsNiArNiw4IEBACj4gPiAgICogICAgICAgICAgICAgICAgICAgRGFuaWVsIEt1
cnR6IDxkamt1cnR6QGNocm9taXVtLm9yZz4KPiA+ICAgKi8KPiA+Cj4gPiArI2luY2x1ZGUgImxp
bnV4L2Vyci5oIgo+ID4gKyNpbmNsdWRlICJsaW51eC9wbV9kb21haW4uaCIKPiA+ICAjaW5jbHVk
ZSA8bGludXgvY2xrLmg+Cj4gPiAgI2luY2x1ZGUgPGxpbnV4L2NvbXBpbGVyLmg+Cj4gPiAgI2lu
Y2x1ZGUgPGxpbnV4L2RlbGF5Lmg+Cj4gPiBAQCAtMTE1LDYgKzExNyw3IEBAIHN0cnVjdCBya19p
b21tdSB7Cj4gPiAgICAgICBzdHJ1Y3QgaW9tbXVfZGV2aWNlIGlvbW11Owo+ID4gICAgICAgc3Ry
dWN0IGxpc3RfaGVhZCBub2RlOyAvKiBlbnRyeSBpbiBya19pb21tdV9kb21haW4uaW9tbXVzICov
Cj4gPiAgICAgICBzdHJ1Y3QgaW9tbXVfZG9tYWluICpkb21haW47IC8qIGRvbWFpbiB0byB3aGlj
aCBpb21tdSBpcyBhdHRhY2hlZCAqLwo+ID4gKyAgICAgc3RydWN0IGRldl9wbV9kb21haW5fbGlz
dCAqcG1kb21haW5zOwo+ID4gIH07Cj4gPgo+ID4gIHN0cnVjdCBya19pb21tdWRhdGEgewo+ID4g
QEAgLTExODYsNiArMTE4OSw3IEBAIHN0YXRpYyBpbnQgcmtfaW9tbXVfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPiA+ICAgICAgIHN0cnVjdCByZXNvdXJjZSAqcmVzOwo+ID4g
ICAgICAgY29uc3Qgc3RydWN0IHJrX2lvbW11X29wcyAqb3BzOwo+ID4gICAgICAgaW50IG51bV9y
ZXMgPSBwZGV2LT5udW1fcmVzb3VyY2VzOwo+ID4gKyAgICAgaW50IHBtX2RvbWFpbl9jb3VudDsK
PiA+ICAgICAgIGludCBlcnIsIGk7Cj4gPgo+ID4gICAgICAgaW9tbXUgPSBkZXZtX2t6YWxsb2Mo
ZGV2LCBzaXplb2YoKmlvbW11KSwgR0ZQX0tFUk5FTCk7Cj4gPiBAQCAtMTI3MSw2ICsxMjc1LDM1
IEBAIHN0YXRpYyBpbnQgcmtfaW9tbXVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKPiA+ICAgICAgIGlmICghZG1hX2RldikKPiA+ICAgICAgICAgICAgICAgZG1hX2RldiA9ICZw
ZGV2LT5kZXY7Cj4gPgo+ID4gKyAgICAgcG1fZG9tYWluX2NvdW50ID0gb2ZfcHJvcGVydHlfY291
bnRfc3RyaW5ncyhpb21tdS0+ZGV2LT5vZl9ub2RlLCAicG93ZXItZG9tYWluLW5hbWVzIik7Cj4K
PiBwbV9kb21haW5fY291bnQgPSBkZXZpY2VfcHJvcGVydHlfc3RyaW5nX2FycmF5X2NvdW50KGlv
bW11LT5kZXYsICJwb3dlci1kb21haW4tbmFtZXMiKTsKPgo+IFdoZW4gcG9zc2libGUgdXNpbmcg
ZGV2aWNlX3Byb3BlcnR5XyBpcyBwcmVmZXJlZCwgc2luY2UgaXQgYWxsb3dzCj4gcmV1c2luZyBj
b2RlIGZvciBzeXN0ZW1zIG5vdCB1c2luZyBEVC4KPgo+ID4gKyAgICAgaWYgKHBtX2RvbWFpbl9j
b3VudCA+IDApIHsKPiA+ICsgICAgICAgICAgICAgY29uc3QgY2hhciAqKnBtX2RvbWFpbnMgPSBr
dm1hbGxvY19hcnJheShwbV9kb21haW5fY291bnQsIHNpemVvZigqcG1fZG9tYWlucyksIEdGUF9L
RVJORUwpOwo+ID4gKyAgICAgICAgICAgICBzdHJ1Y3QgZGV2X3BtX2RvbWFpbl9hdHRhY2hfZGF0
YSBwbV9kb21haW5fZGF0YSA9IHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAucGRfbmFtZXMg
PSBwbV9kb21haW5zLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgIC5udW1fcGRfbmFtZXMgPSBw
bV9kb21haW5fY291bnQsCj4gPiArICAgICAgICAgICAgICAgICAgICAgLnBkX2ZsYWdzID0gUERf
RkxBR19ERVZfTElOS19PTiwKPiA+ICsgICAgICAgICAgICAgfTsKPiA+ICsgICAgICAgICAgICAg
aW50IGk7Cj4gPiArCj4gPiArICAgICAgICAgICAgIGlmICghcG1fZG9tYWluX2RhdGEucGRfbmFt
ZXMpIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBlcnIgPSAtRU5PTUVNOwo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgIGdvdG8gZXJyX3JlbW92ZV9zeXNmczsKPiA+ICsgICAgICAgICAgICAg
fQo+ID4gKwo+ID4gKyAgICAgICAgICAgICBmb3IgKGkgPSAwOyBpIDwgcG1fZG9tYWluX2NvdW50
OyBpKyspIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBlcnIgPSBvZl9wcm9wZXJ0eV9yZWFk
X3N0cmluZ19pbmRleChpb21tdS0+ZGV2LT5vZl9ub2RlLCAicG93ZXItZG9tYWluLW5hbWVzIiwg
aSwgJnBtX2RvbWFpbnNbaV0pOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGlmIChlcnIpIHsK
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGtmcmVlKHBtX2RvbWFpbnMpOwo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ290byBlcnJfcmVtb3ZlX3N5c2ZzOwo+ID4g
KyAgICAgICAgICAgICAgICAgICAgIH0KPiA+ICsgICAgICAgICAgICAgfQo+Cj4gVGhlcmUgaXMg
YSBoZWxwZXIgdG8gcmVhZCBhIHN0cmluZyBhcnJheToKPgo+IGVyciA9IGRldmljZV9wcm9wZXJ0
eV9yZWFkX3N0cmluZ19hcnJheShpb21tdS0+ZGV2LCAicG93ZXItZG9tYWluLW5hbWVzIiwgcG1f
ZG9tYWlucywgcG1fZG9tYWluX2NvdW50KTsKCgpUaGFua3MgZm9yIHRoZSByZXZpZXcsCgpUb21l
dQoKPiAtLSBTZWJhc3RpYW4KPgo+ID4gKwo+ID4gKyAgICAgICAgICAgICBlcnIgPSBkZXZfcG1f
ZG9tYWluX2F0dGFjaF9saXN0KGlvbW11LT5kZXYsICZwbV9kb21haW5fZGF0YSwgJmlvbW11LT5w
bWRvbWFpbnMpOwo+ID4gKyAgICAgICAgICAgICBrZnJlZShwbV9kb21haW5zKTsKPiA+ICsgICAg
ICAgICAgICAgaWYgKGVyciA8IDApCj4gPiArICAgICAgICAgICAgICAgICAgICAgZ290byBlcnJf
cmVtb3ZlX3N5c2ZzOwo+ID4gKyAgICAgfQo+ID4gKwo+ID4gICAgICAgcG1fcnVudGltZV9lbmFi
bGUoZGV2KTsKPiA+Cj4gPiAgICAgICBmb3IgKGkgPSAwOyBpIDwgaW9tbXUtPm51bV9pcnE7IGkr
Kykgewo+ID4gQEAgLTEyOTIsNiArMTMyNSw3IEBAIHN0YXRpYyBpbnQgcmtfaW9tbXVfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ICAgICAgIHJldHVybiAwOwo+ID4gIGVy
cl9wbV9kaXNhYmxlOgo+ID4gICAgICAgcG1fcnVudGltZV9kaXNhYmxlKGRldik7Cj4gPiArICAg
ICBkZXZfcG1fZG9tYWluX2RldGFjaF9saXN0KGlvbW11LT5wbWRvbWFpbnMpOwo+ID4gIGVycl9y
ZW1vdmVfc3lzZnM6Cj4gPiAgICAgICBpb21tdV9kZXZpY2Vfc3lzZnNfcmVtb3ZlKCZpb21tdS0+
aW9tbXUpOwo+ID4gIGVycl91bnByZXBhcmVfY2xvY2tzOgo+ID4gQEAgLTEzMTAsNiArMTM0NCw4
IEBAIHN0YXRpYyB2b2lkIHJrX2lvbW11X3NodXRkb3duKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCj4gPiAgICAgICAgICAgICAgIGRldm1fZnJlZV9pcnEoaW9tbXUtPmRldiwgaXJxLCBp
b21tdSk7Cj4gPiAgICAgICB9Cj4gPgo+ID4gKyAgICAgZGV2X3BtX2RvbWFpbl9kZXRhY2hfbGlz
dChpb21tdS0+cG1kb21haW5zKTsKPiA+ICsKPiA+ICAgICAgIHBtX3J1bnRpbWVfZm9yY2Vfc3Vz
cGVuZCgmcGRldi0+ZGV2KTsKPiA+ICB9Cj4gPgo+ID4KPiA+IC0tCj4gPiAyLjQ1LjIKPiA+Cj4g
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
