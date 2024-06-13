Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9185C27C75
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 09:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3B0HWSnLeEA1zxnnhxnhEZ3Oec3XKHbnwLaUD5+gyw=; b=Chyaw7mf4I4lDI
	68rzX/WTRRKKlRBMAc/cocF7G7byEszaSErYnAYKzum4nQPsjq72y45S521O28AMX5Y8xhSO6DHIu
	05Hqg218UA8rEFZk0eCKsBMY3QMSLL10FNxEzQXUTlUbRels41SK6tgrelJC5/hfMZlxVvnz9AliL
	ViqpGAV7wKANPpH6Dl32v1xUYDRGEMOS9mDaaEMr/ww67jzxrbg65F93A6U4V63VoOmY7IGsdALAn
	w3nZeYlWiDGqQ1Wai0nM38Fl/d7dD+8rBDhoX1CXDeDqz/CKRjrSZN0TKKHG5VuXlrUwQdbpBrc1U
	wUB3SBPinEpX2bDpjtWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHgqa-0000000Fyom-0SY8;
	Thu, 13 Jun 2024 09:34:20 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHgqV-0000000FymD-3nrE
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Jun 2024 09:34:17 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-627efad69b4so7923997b3.3
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Jun 2024 02:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1718271254; x=1718876054; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tCGcmMkVAYD3NfdijGLTxRKIxsWVC1ouY5NCrb4R7to=;
        b=PyTF/YX4CgNbVyC1bnRSSbewzPxMd2FQehDfhrF8LJczBWxhsZ+KvgjOSEP1QXHgF2
         IVlp1Ct4JzkPcrKw6rWXOUFcYZtl+8CYrso9OelppMTfO2Jg2u9OcoM9bU+25aIPabel
         /XTv/ALIJWVTRCGu+zTT8S5clkCeWPXH6gPR4e+ic/X5vN5TXcfQmCd93ZaOpVJ0MrRT
         5FXC6flI/oJyLPcT2NzYzVdXoBo04iSZNN6wjrYDo1Yl57+4LwghDYWMy2HAkUY5XWSY
         DnfxjvDhOjQJEtE/9CY5ERyxhN5UAnBz/FAnsG0JOweTwk+AsBPsDwEiCis9+R5nWkzD
         TXEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718271254; x=1718876054;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tCGcmMkVAYD3NfdijGLTxRKIxsWVC1ouY5NCrb4R7to=;
        b=ZVmfrGVbW+F4dgzr4yrTMMdZdXLwrW4J/6MJiWgnJvhFfpnYCwR3wVBsSxlUYKiQN7
         IfWqjwVvWFxxalJY7wCiqL+KCvempKbUzo9fm/oyat5PhjoIR8QaloqV1pJD/EKTknoR
         SOwCYYxkzLqr066KLx2cIA1L0OqhYlScBU7OrG9B5iFpOdVL0HZWHbXfaI91VVgGvN+0
         Gx58KPg/PxISVLwQ/HMOj5i/v72HnmhI5uTR/M5rMC3UbdNO0WZgoXRPS+D6sYAvtqRG
         UAwgrswNC0j28Vx7Mdt5lu6zPb83m6KuEVQfgjHjyEbOPSkh4siWOLPMc65kYM5d9VFA
         yS6w==
X-Forwarded-Encrypted: i=1; AJvYcCXXbP8tDMtNCQhVfqyNSlPpoMhgmlEibLjPdYjLSD9aJyGfqNR4xsOS7u4+5dmfbR1hp3XTen+ivtVf5l3t3AH5UA0i9rKFraeCkrdUDlzvMfm7
X-Gm-Message-State: AOJu0YxnVoi5UbFDEsBo8ZaoZhqyBYfCnEp0Et9RMMOQXU1dkedkx7NQ
	nbOSl/5Sy74GTYhtLB3uX46u8XJp/eD4A9Xc2dcq3VxdHH+xafIb3v4tyC/EkyqvyuXFyckXvQ1
	4SmA=
X-Google-Smtp-Source: AGHT+IEsH4ZY8LlfbgNVWRZ8tiFgIXL5lxkCeD0uKgAAfOwtT3Tx2O2eK7Y7IbrduiqPFyugtBsY3w==
X-Received: by 2002:a81:6fd4:0:b0:627:e3a5:1884 with SMTP id 00721157ae682-62fb847ac50mr44186837b3.12.1718271254439;
        Thu, 13 Jun 2024 02:34:14 -0700 (PDT)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com. [209.85.219.175])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-631189a7e4dsm1236997b3.38.2024.06.13.02.34.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jun 2024 02:34:13 -0700 (PDT)
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-dfa6e0add60so900120276.3;
        Thu, 13 Jun 2024 02:34:13 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX3AMNoqAq/uCZmKr8Ywu/Ko6XAoZoCfTgvMmeT1hm6QwazX8bowTU/brmmjf3HO9zi1tC7+KEQBfZWAktUAeKrHRjLClm/IRyQgI/5G8jw2hpKSsd/hzjVKukRk3nV2XY+nI2drAG1fpXAZvCkvlDWpM9q8sAWSHY=
X-Received: by 2002:a5b:5d2:0:b0:dfa:cd4a:b3aa with SMTP id
 3f1490d57ef6-dfe691067efmr4261141276.56.1718271253175; Thu, 13 Jun 2024
 02:34:13 -0700 (PDT)
MIME-Version: 1.0
References: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
 <20240612-6-10-rocket-v1-2-060e48eea250@tomeuvizoso.net> <ffviz6ak6qsn2reg5y35aerzy7wxfx6fzix6xjyminbhfcguus@clszdjakdcjd>
 <CAAObsKCx+r5UuESnrPem1Rb1-BF4i8FVwu6uozWhABOWoq+M4Q@mail.gmail.com>
In-Reply-To: <CAAObsKCx+r5UuESnrPem1Rb1-BF4i8FVwu6uozWhABOWoq+M4Q@mail.gmail.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Thu, 13 Jun 2024 11:34:02 +0200
X-Gmail-Original-Message-ID: <CAAObsKChaBZ2C5ezWsiZ_LoN6R2HFhFA9=UNSRYB6cyeo-jreg@mail.gmail.com>
Message-ID: <CAAObsKChaBZ2C5ezWsiZ_LoN6R2HFhFA9=UNSRYB6cyeo-jreg@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20240613_023415_987994_AA65EDFF 
X-CRM114-Status: GOOD (  50.61  )
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

T24gVGh1LCBKdW4gMTMsIDIwMjQgYXQgMTE6MjTigK9BTSBUb21ldSBWaXpvc28gPHRvbWV1QHRv
bWV1dml6b3NvLm5ldD4gd3JvdGU6Cj4KPiBPbiBUaHUsIEp1biAxMywgMjAyNCBhdCAyOjA14oCv
QU0gU2ViYXN0aWFuIFJlaWNoZWwKPiA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4g
d3JvdGU6Cj4gPgo+ID4gSGksCj4gPgo+ID4gT24gV2VkLCBKdW4gMTIsIDIwMjQgYXQgMDM6NTI6
NTVQTSBHTVQsIFRvbWV1IFZpem9zbyB3cm90ZToKPiA+ID4gSU9NTVVzIHdpdGggbXVsdGlwbGUg
YmFzZSBhZGRyZXNzZXMgY2FuIGFsc28gaGF2ZSBtdWx0aXBsZSBwb3dlcgo+ID4gPiBkb21haW5z
Lgo+ID4gPgo+ID4gPiBUaGUgYmFzZSBmcmFtZXdvcmsgb25seSB0YWtlcyBjYXJlIG9mIGEgc2lu
Z2xlIHBvd2VyIGRvbWFpbiwgYXMgc29tZQo+ID4gPiBkZXZpY2VzIHdpbGwgbmVlZCBmb3IgdGhl
c2UgcG93ZXIgZG9tYWlucyB0byBiZSBwb3dlcmVkIG9uIGluIGEgc3BlY2lmaWMKPiA+ID4gb3Jk
ZXIuCj4gPiA+Cj4gPiA+IFVzZSBhIGhlbHBlciBmdW5jdGlvbiB0byBzdGFibGlzaCBsaW5rcyBp
biB0aGUgb3JkZXIgaW4gd2hpY2ggdGhleSBhcmUKPiA+ID4gaW4gdGhlIERULgo+ID4gPgo+ID4g
PiBUaGlzIGlzIG5lZWRlZCBieSB0aGUgSU9NTVUgdXNlZCBieSB0aGUgTlBVIGluIHRoZSBSSzM1
ODguCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IFRvbWV1IFZpem9zbyA8dG9tZXVAdG9tZXV2
aXpvc28ubmV0Pgo+ID4gPiAtLS0KPiA+Cj4gPiBUbyBtZSBpdCBsb29rcyBsaWtlIHRoaXMgaXMg
bXVsdGlwbGUgSU9NTVVzLCB3aGljaCBzaG91bGQgZWFjaCBnZXQKPiA+IHRoZWlyIG93biBub2Rl
LiBJIGRvbid0IHNlZSBhIGdvb2QgcmVhc29uIGZvciBtZXJnaW5nIHRoZXNlCj4gPiB0b2dldGhl
ci4KPgo+IEkgaGF2ZSBtYWRlIHF1aXRlIGEgZmV3IGF0dGVtcHRzIGF0IHNwbGl0dGluZyB0aGUg
SU9NTVVzIGFuZCBhbHNvIHRoZQo+IGNvcmVzLCBidXQgSSB3YXNuJ3QgYWJsZSB0byBnZXQgdGhp
bmdzIHdvcmtpbmcgc3RhYmx5LiBUaGUgVFJNIGlzCj4gcmVhbGx5IHNjYW50IGFib3V0IGhvdyB0
aGUgNCBJT01NVSBpbnN0YW5jZXMgcmVsYXRlIHRvIGVhY2ggb3RoZXIsIGFuZAo+IHdoYXQgdGhl
IGZvdXJ0aCBvbmUgaXMgZm9yLgo+Cj4gR2l2ZW4gdGhhdCB0aGUgdmVuZG9yIGRyaXZlciB0cmVh
dHMgdGhlbSBhcyBhIHNpbmdsZSBJT01NVSB3aXRoIGZvdXIKPiBpbnN0YW5jZXMgYW5kIHdlIGRv
bid0IGhhdmUgYW55IGluZm9ybWF0aW9uIG9uIHRoZW0sIEkgcmVzaWduZWQgbXlzZWxmCj4gdG8g
anVzdCBoYXZlIHRoZW0gYXMgYSBzaW5nbGUgZGV2aWNlLgo+Cj4gSSB3b3VsZCBsb3ZlIHRvIGJl
IHByb3ZlZCB3cm9uZyB0aG91Z2ggYW5kIGZpbmQgYSB3YXkgZm8gZ2V0dGluZwo+IHRoaW5ncyBz
dGFibHkgYXMgZGlmZmVyZW50IGRldmljZXMgc28gdGhleSBjYW4gYmUgcG93ZXJlZCBvbiBhbmQg
b2ZmCj4gYXMgbmVlZGVkLiBXZSBjb3VsZCBzYXZlIHF1aXRlIHNvbWUgY29kZSBhcyB3ZWxsLgoK
RldJVywgaGVyZSBhIGZldyB3YXlzIGhvdyBJIHRyaWVkIHRvIHN0cnVjdHVyZSB0aGUgRFQgbm9k
ZXMsIG5vbmUgb2YKdGhlc2Ugd29ya2VkIHJlbGlhYmx5OgoKaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL3RvbWV1L2xpbnV4Ly0vYmxvYi82LjEwLXJvY2tldC1tdWx0aXBsZS1kZXZpY2Vz
LXBvd2VyL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpP3JlZl90eXBl
PWhlYWRzI0wxMTYzCmh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy90b21ldS9saW51eC8t
L2Jsb2IvNi4xMC1yb2NrZXQtc2NoZW1hLXN1Ym5vZGVzLy9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OHMuZHRzaT9yZWZfdHlwZT1oZWFkcyNMMTE2MgpodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvdG9tZXUvbGludXgvLS9ibG9iLzYuMTAtcm9ja2V0LW11bHRpcGxlLWRl
dmljZXMvL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpP3JlZl90eXBl
PWhlYWRzI0wxMTYzCmh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy90b21ldS9saW51eC8t
L2Jsb2IvNi4xMC1yb2NrZXQtbXVsdGlwbGUtaW9tbXVzLy9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OHMuZHRzaT9yZWZfdHlwZT1oZWFkcyNMMjY2OQoKSSBjYW4gdmVyeSB3ZWxs
IGltYWdpbmUgSSBtaXNzZWQgc29tZSB3YXkgb2YgZ2V0dGluZyB0aGlzIHRvIHdvcmssIGJ1dApm
b3IgZXZlcnkgYXR0ZW1wdCwgdGhlIGRvbWFpbnMsIGlvbW11cyBhbmQgY29yZXMgd2VyZSByZXN1
bWVkIGluCmRpZmZlcmVudCBvcmRlcnMgdGhhdCBwcmVzdW1hYmx5IGNhdXNlZCBwcm9ibGVtcyBk
dXJpbmcgY29uY3VycmVudApleGVjdXRpb24gZm8gd29ya2xvYWRzLgoKU28gSSBmZWxsIGJhY2sg
dG8gd2hhdCB0aGUgdmVuZG9yIGRyaXZlciBkb2VzLCB3aGljaCB3b3JrcyByZWxpYWJseQooYnV0
IGFsbCBjb3JlcyBoYXZlIHRvIGJlIHBvd2VyZWQgb24gYXQgdGhlIHNhbWUgdGltZSkuCgpUaGFu
a3MsCgpUb21ldQoKPiA+IEkgd2lsbCBzdGlsbCByZXZpZXcgdGhpcyBhc3N1bWluZyB0aGVyZSBp
cyBvbmUuIFRoYXQgd291bGQgcmVxdWlyZQo+ID4gdG8gZmlyc3Qgb2YgYWxsIHVwZGF0ZSB0aGUg
RFQgYmluZGluZzoKPiA+Cj4gPiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW9t
bXUvcm9ja2NoaXAsaW9tbXUueWFtbAo+ID4KPiA+IDEuIEl0IGRvZXMgbm90IGFsbG93IHVzaW5n
ICJwb3dlci1kb21haW4tbmFtZXMiIHByb3BlcnR5Cj4gPiAyLiBJdCBsaW1pdHMgdGhlIG51bWJl
ciBvZiBhbGxvd2VkIHBvd2VyLWRvbWFpbnMgdG8gMQo+ID4gMy4gSXQgbGltaXRzIHRoZSBudW1i
ZXIgb2YgYWxsb3dlZCBiYXNlIGFkZHJlc3NlcyB0byAyCj4gPgo+ID4gTG9va2luZyBhdCB0aGUg
RFQgcGF0Y2ggeW91IGFsc28gYWRkIG1vcmUgaW50ZXJydXB0cyBhbmQgY2xvY2tzLAo+ID4gd2hp
Y2ggYXJlIGFsc28gbGltaXRlZCBieSB0aGUgYmluZGluZy4gWW91IHNob3VsZCBzZWUgYSBidW5j
aCBvZgo+ID4gd2FybmluZ3Mgd2hlbiB5b3UgY2hlY2sgdGhlIERUQlMgdmlhICdtYWtlIGR0YnNf
Y2hlY2snCj4KPiBPb3BzLCB5ZWFoLCBJIHdhcyBsaW1pdGluZyBkdGJzX2NoZWNrIHdpdGggRFRf
U0NIRU1BX0ZJTEVTLCBub3cgSSBzZWUKPiB0aGUgZXJyb3JzLgo+Cj4gPiA+ICBkcml2ZXJzL2lv
bW11L3JvY2tjaGlwLWlvbW11LmMgfCAzNiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysKPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzNiBpbnNlcnRpb25zKCspCj4gPiA+Cj4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMgYi9kcml2ZXJzL2lv
bW11L3JvY2tjaGlwLWlvbW11LmMKPiA+ID4gaW5kZXggZjU2Mjk1MTViZDc4Li42NzNiMGViYjYy
NjIgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvaW9tbXUvcm9ja2NoaXAtaW9tbXUuYwo+ID4g
PiArKysgYi9kcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMKPiA+ID4gQEAgLTYsNiArNiw4
IEBACj4gPiA+ICAgKiAgICAgICAgICAgICAgICAgICBEYW5pZWwgS3VydHogPGRqa3VydHpAY2hy
b21pdW0ub3JnPgo+ID4gPiAgICovCj4gPiA+Cj4gPiA+ICsjaW5jbHVkZSAibGludXgvZXJyLmgi
Cj4gPiA+ICsjaW5jbHVkZSAibGludXgvcG1fZG9tYWluLmgiCj4gPiA+ICAjaW5jbHVkZSA8bGlu
dXgvY2xrLmg+Cj4gPiA+ICAjaW5jbHVkZSA8bGludXgvY29tcGlsZXIuaD4KPiA+ID4gICNpbmNs
dWRlIDxsaW51eC9kZWxheS5oPgo+ID4gPiBAQCAtMTE1LDYgKzExNyw3IEBAIHN0cnVjdCBya19p
b21tdSB7Cj4gPiA+ICAgICAgIHN0cnVjdCBpb21tdV9kZXZpY2UgaW9tbXU7Cj4gPiA+ICAgICAg
IHN0cnVjdCBsaXN0X2hlYWQgbm9kZTsgLyogZW50cnkgaW4gcmtfaW9tbXVfZG9tYWluLmlvbW11
cyAqLwo+ID4gPiAgICAgICBzdHJ1Y3QgaW9tbXVfZG9tYWluICpkb21haW47IC8qIGRvbWFpbiB0
byB3aGljaCBpb21tdSBpcyBhdHRhY2hlZCAqLwo+ID4gPiArICAgICBzdHJ1Y3QgZGV2X3BtX2Rv
bWFpbl9saXN0ICpwbWRvbWFpbnM7Cj4gPiA+ICB9Owo+ID4gPgo+ID4gPiAgc3RydWN0IHJrX2lv
bW11ZGF0YSB7Cj4gPiA+IEBAIC0xMTg2LDYgKzExODksNyBAQCBzdGF0aWMgaW50IHJrX2lvbW11
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiA+ICAgICAgIHN0cnVjdCBy
ZXNvdXJjZSAqcmVzOwo+ID4gPiAgICAgICBjb25zdCBzdHJ1Y3QgcmtfaW9tbXVfb3BzICpvcHM7
Cj4gPiA+ICAgICAgIGludCBudW1fcmVzID0gcGRldi0+bnVtX3Jlc291cmNlczsKPiA+ID4gKyAg
ICAgaW50IHBtX2RvbWFpbl9jb3VudDsKPiA+ID4gICAgICAgaW50IGVyciwgaTsKPiA+ID4KPiA+
ID4gICAgICAgaW9tbXUgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKmlvbW11KSwgR0ZQX0tF
Uk5FTCk7Cj4gPiA+IEBAIC0xMjcxLDYgKzEyNzUsMzUgQEAgc3RhdGljIGludCBya19pb21tdV9w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gPiAgICAgICBpZiAoIWRtYV9k
ZXYpCj4gPiA+ICAgICAgICAgICAgICAgZG1hX2RldiA9ICZwZGV2LT5kZXY7Cj4gPiA+Cj4gPiA+
ICsgICAgIHBtX2RvbWFpbl9jb3VudCA9IG9mX3Byb3BlcnR5X2NvdW50X3N0cmluZ3MoaW9tbXUt
PmRldi0+b2Zfbm9kZSwgInBvd2VyLWRvbWFpbi1uYW1lcyIpOwo+ID4KPiA+IHBtX2RvbWFpbl9j
b3VudCA9IGRldmljZV9wcm9wZXJ0eV9zdHJpbmdfYXJyYXlfY291bnQoaW9tbXUtPmRldiwgInBv
d2VyLWRvbWFpbi1uYW1lcyIpOwo+ID4KPiA+IFdoZW4gcG9zc2libGUgdXNpbmcgZGV2aWNlX3By
b3BlcnR5XyBpcyBwcmVmZXJlZCwgc2luY2UgaXQgYWxsb3dzCj4gPiByZXVzaW5nIGNvZGUgZm9y
IHN5c3RlbXMgbm90IHVzaW5nIERULgo+ID4KPiA+ID4gKyAgICAgaWYgKHBtX2RvbWFpbl9jb3Vu
dCA+IDApIHsKPiA+ID4gKyAgICAgICAgICAgICBjb25zdCBjaGFyICoqcG1fZG9tYWlucyA9IGt2
bWFsbG9jX2FycmF5KHBtX2RvbWFpbl9jb3VudCwgc2l6ZW9mKCpwbV9kb21haW5zKSwgR0ZQX0tF
Uk5FTCk7Cj4gPiA+ICsgICAgICAgICAgICAgc3RydWN0IGRldl9wbV9kb21haW5fYXR0YWNoX2Rh
dGEgcG1fZG9tYWluX2RhdGEgPSB7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAucGRfbmFt
ZXMgPSBwbV9kb21haW5zLAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgLm51bV9wZF9uYW1l
cyA9IHBtX2RvbWFpbl9jb3VudCwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIC5wZF9mbGFn
cyA9IFBEX0ZMQUdfREVWX0xJTktfT04sCj4gPiA+ICsgICAgICAgICAgICAgfTsKPiA+ID4gKyAg
ICAgICAgICAgICBpbnQgaTsKPiA+ID4gKwo+ID4gPiArICAgICAgICAgICAgIGlmICghcG1fZG9t
YWluX2RhdGEucGRfbmFtZXMpIHsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGVyciA9IC1F
Tk9NRU07Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBnb3RvIGVycl9yZW1vdmVfc3lzZnM7
Cj4gPiA+ICsgICAgICAgICAgICAgfQo+ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgZm9yIChp
ID0gMDsgaSA8IHBtX2RvbWFpbl9jb3VudDsgaSsrKSB7Cj4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICBlcnIgPSBvZl9wcm9wZXJ0eV9yZWFkX3N0cmluZ19pbmRleChpb21tdS0+ZGV2LT5vZl9u
b2RlLCAicG93ZXItZG9tYWluLW5hbWVzIiwgaSwgJnBtX2RvbWFpbnNbaV0pOwo+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgaWYgKGVycikgewo+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBrZnJlZShwbV9kb21haW5zKTsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgZ290byBlcnJfcmVtb3ZlX3N5c2ZzOwo+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
fQo+ID4gPiArICAgICAgICAgICAgIH0KPiA+Cj4gPiBUaGVyZSBpcyBhIGhlbHBlciB0byByZWFk
IGEgc3RyaW5nIGFycmF5Ogo+ID4KPiA+IGVyciA9IGRldmljZV9wcm9wZXJ0eV9yZWFkX3N0cmlu
Z19hcnJheShpb21tdS0+ZGV2LCAicG93ZXItZG9tYWluLW5hbWVzIiwgcG1fZG9tYWlucywgcG1f
ZG9tYWluX2NvdW50KTsKPgo+Cj4gVGhhbmtzIGZvciB0aGUgcmV2aWV3LAo+Cj4gVG9tZXUKPgo+
ID4gLS0gU2ViYXN0aWFuCj4gPgo+ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgZXJyID0gZGV2
X3BtX2RvbWFpbl9hdHRhY2hfbGlzdChpb21tdS0+ZGV2LCAmcG1fZG9tYWluX2RhdGEsICZpb21t
dS0+cG1kb21haW5zKTsKPiA+ID4gKyAgICAgICAgICAgICBrZnJlZShwbV9kb21haW5zKTsKPiA+
ID4gKyAgICAgICAgICAgICBpZiAoZXJyIDwgMCkKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
IGdvdG8gZXJyX3JlbW92ZV9zeXNmczsKPiA+ID4gKyAgICAgfQo+ID4gPiArCj4gPiA+ICAgICAg
IHBtX3J1bnRpbWVfZW5hYmxlKGRldik7Cj4gPiA+Cj4gPiA+ICAgICAgIGZvciAoaSA9IDA7IGkg
PCBpb21tdS0+bnVtX2lycTsgaSsrKSB7Cj4gPiA+IEBAIC0xMjkyLDYgKzEzMjUsNyBAQCBzdGF0
aWMgaW50IHJrX2lvbW11X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiA+
ICAgICAgIHJldHVybiAwOwo+ID4gPiAgZXJyX3BtX2Rpc2FibGU6Cj4gPiA+ICAgICAgIHBtX3J1
bnRpbWVfZGlzYWJsZShkZXYpOwo+ID4gPiArICAgICBkZXZfcG1fZG9tYWluX2RldGFjaF9saXN0
KGlvbW11LT5wbWRvbWFpbnMpOwo+ID4gPiAgZXJyX3JlbW92ZV9zeXNmczoKPiA+ID4gICAgICAg
aW9tbXVfZGV2aWNlX3N5c2ZzX3JlbW92ZSgmaW9tbXUtPmlvbW11KTsKPiA+ID4gIGVycl91bnBy
ZXBhcmVfY2xvY2tzOgo+ID4gPiBAQCAtMTMxMCw2ICsxMzQ0LDggQEAgc3RhdGljIHZvaWQgcmtf
aW9tbXVfc2h1dGRvd24oc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ID4gICAgICAg
ICAgICAgICBkZXZtX2ZyZWVfaXJxKGlvbW11LT5kZXYsIGlycSwgaW9tbXUpOwo+ID4gPiAgICAg
ICB9Cj4gPiA+Cj4gPiA+ICsgICAgIGRldl9wbV9kb21haW5fZGV0YWNoX2xpc3QoaW9tbXUtPnBt
ZG9tYWlucyk7Cj4gPiA+ICsKPiA+ID4gICAgICAgcG1fcnVudGltZV9mb3JjZV9zdXNwZW5kKCZw
ZGV2LT5kZXYpOwo+ID4gPiAgfQo+ID4gPgo+ID4gPgo+ID4gPiAtLQo+ID4gPiAyLjQ1LjIKPiA+
ID4KPiA+ID4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
