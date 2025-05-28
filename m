Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B169C3ABB2
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 May 2025 16:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ewcSjtv79UNWWT1OqtX5ck7tpldqHRp4IC0XBCwfvLI=; b=sUwSO5zCEmbbsB
	PaZ9gOrLYaLrNoKNBHaD9nfWwG4lLUtPTWSGYgHONBI8lYZKC5Ra3GuR5JXSSWfwu9hZ+c5jq2/2e
	tY6VVdvto8gua8hrLxtEr70CYmUE46gHaovbvL/I93t8Ob5yGra6vkADYyE10Ihp7xBMnYF9oYjtU
	TrxXDKZ0RrxEyM+r7l3MJkpznFx79AtrsbzV8tk4flEt0f8emYGn7csr5PFbmTMHoLKox27gqlv5B
	tNrt3WpBLz9dY5MoZghMTTyPGG+0jKaoxfIt2l8vQ6XXuyirpcGgAtwKFlRbkJ2TMxekfxqkYmHbA
	ndmTr3x8tjVrmQvYFYmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKJdR-0000000DexT-239P;
	Wed, 28 May 2025 16:28:09 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKIoC-0000000DZ4P-0qW6
	for linux-rockchip@lists.infradead.org;
	Wed, 28 May 2025 15:35:14 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-e731a56e111so3785628276.1
        for <linux-rockchip@lists.infradead.org>; Wed, 28 May 2025 08:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1748446510; x=1749051310; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/xxvQd++y7EnTgMMEVQbGeZAD8fz0r4wC/tmiy3K++8=;
        b=TCfJbF893FmU4tghZk5qv9EAAkolVaWt61vD13VEBkweL0uKvw5DLEEtAWqqZF7LlG
         T2izbtUMyBllSDfgJRbnyJBRz0Hh1Ay5GpX0QucZkKq9Omplvkla1r7ZREoI1e6lMxfu
         tkCoIClsOloUkXGNgHCulF843nOeeFZ0czX/s5KEjf8Sf/jbNTgleb4xel+/WmckPhZt
         G88GTFkQQBqju7ETEvnLdPWexndiTW6ND2Wqdb+rm39c+zEHTTE8hTSfd2Go8xR0gvCT
         zQ3lppr6weOzVDdBbpwfrnaJv1v3MjMpXiJAFeX9J9q59XnBbbWde7zPe0OrO476H1MP
         iaKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748446510; x=1749051310;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/xxvQd++y7EnTgMMEVQbGeZAD8fz0r4wC/tmiy3K++8=;
        b=iqnhKeI2xQ9uqiOSzWCPBbnZZa6EwX5lRKLBXX+9QMlr3mjwli3fBlW7973WLynCaK
         NsMu4Xux8aPDIngWq9qvT5sveYOSnasnUU4VPmbQX4meQYYoRdsHvvnGk5r6BxKmfNtx
         NEmX2KhpbjoEDSpL9sVEpG9wBNTu/p7BlxysMsS7Fesbr4eIIicDBYw+0IWLpR2TiFDS
         uCy/wiwlhdBO3T/0htJw4s/Y9Nn12ZdS6smah3m9R7mZGF/VB7vbeTh6nNmCGpB4Se4P
         SlWFa7PPRvCwFrWYLoLKnCodv656Ji3P4rk65/D6Wh47vTsZIfVCD3XET2rxjVXEatLT
         DDSw==
X-Forwarded-Encrypted: i=1; AJvYcCWBsF+gNzmic/7bIvobMNnWKWfcAihCvVQvM6KqW++ezfJhs9GC2TrAkTqLvDY2WgE2eIYigu3g0M9oxdd5uw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxAHghDQp8LtHN9prooViy069uwm19MBSVZotFCy2K1mGwFO2a+
	7T6BZjhbBWsKzXVQIPubpgKMcZgQn7y7RoORyozofZVoios6hl+WvwfbiPj0CfHewPw=
X-Gm-Gg: ASbGnct1BRt46O4YQ7pYNeFlaSEjuTGhuTaM8vxjQVloeKCKOKgJDuRFyjDogaPAuBF
	Dznv1mcjAgOVt+ppJFfDltlihOZvqpeZxD6/i0Vqzul1tlczRpT5Cioa/C/3tCs+VftFTiiK2bW
	uxJqyUmRAWsyTbe/Sk/MTIVRuKTmMpEFTX8ukgHYcfJL0Jsk8/8pXU6Te5PLC50ssVnq6pD654J
	+qhMEKQbd7+U/o4CKuW67x6QY4mmvUmtI5Qeicl1XE6MEUIvcwKfm5avA3JCalUkAlItU+eDCNJ
	EAcf5t6o1SBjfx30o3zIZwF3barl4kvzVCuRs6k54F086Rx8K5qepad/VpflKB512F6CZs8xklr
	pjmEwWcUSkovX/DNBUg4=
X-Google-Smtp-Source: AGHT+IGiOL6x42T0jsPHvb8a5661YLptrmV907N8otuGHZQUTt1oTogSJcKwYAqfLR7NwmGaq2sMbg==
X-Received: by 2002:a05:6902:10c2:b0:e7d:cdca:8ed9 with SMTP id 3f1490d57ef6-e7dcdca9345mr7373955276.14.1748446510592;
        Wed, 28 May 2025 08:35:10 -0700 (PDT)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com. [209.85.219.169])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e7f6185ed68sm312947276.46.2025.05.28.08.35.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 May 2025 08:35:09 -0700 (PDT)
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-e7da099de49so3324373276.2;
        Wed, 28 May 2025 08:35:09 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW7ky+VdrxidqLjXj7/TyyptQOiPxTiygQlqcSmBI1/NatcOahTgiIdnhgwvLelETJ6NIm0JHVyaL/QaTelDgx1@lists.infradead.org, AJvYcCWUGkGxwRUj/cv6nxR/3GF857RAO8BuvcHno79vSrNt4nzG28CWuF39sDXQ6wVNmzAR7B2AmvY/v20s8+saMiM=@lists.infradead.org
X-Received: by 2002:a05:6902:1021:b0:e7d:ca07:a144 with SMTP id
 3f1490d57ef6-e7dca07a23dmr8541656276.5.1748446509068; Wed, 28 May 2025
 08:35:09 -0700 (PDT)
MIME-Version: 1.0
References: <20250520-6-10-rocket-v5-0-18c9ca0fcb3c@tomeuvizoso.net>
 <20250520-6-10-rocket-v5-1-18c9ca0fcb3c@tomeuvizoso.net> <CAL_Jsq+2mvUDWWvtPSryAiCNJP_=1vNRxARxWTS=-O-LTQO3Dg@mail.gmail.com>
In-Reply-To: <CAL_Jsq+2mvUDWWvtPSryAiCNJP_=1vNRxARxWTS=-O-LTQO3Dg@mail.gmail.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 28 May 2025 17:34:57 +0200
X-Gmail-Original-Message-ID: <CAAObsKDE33kZ27XbgeWBqQzrZXDHwHzp2Q6A7y_osC50UG-n7g@mail.gmail.com>
X-Gm-Features: AX0GCFtwrQfY2JjemntUXNTLyymu_4uxtqwB53YlQ42a11mlnVkp6EMD0QhiJuw
Message-ID: <CAAObsKDE33kZ27XbgeWBqQzrZXDHwHzp2Q6A7y_osC50UG-n7g@mail.gmail.com>
Subject: Re: [PATCH v5 01/10] dt-bindings: npu: rockchip,rknn: Add bindings
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_083512_530616_8BE25814 
X-CRM114-Status: GOOD (  31.49  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-doc@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBNYXkgMjgsIDIwMjUgYXQgMzo0MeKAr1BNIFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gT24gVHVlLCBNYXkgMjAsIDIwMjUgYXQgNToyN+KAr0FNIFRvbWV1
IFZpem9zbyA8dG9tZXVAdG9tZXV2aXpvc28ubmV0PiB3cm90ZToKPiA+Cj4gPiBBZGQgdGhlIGJp
bmRpbmdzIGZvciB0aGUgTmV1cmFsIFByb2Nlc3NpbmcgVW5pdCBJUCBmcm9tIFJvY2tjaGlwLgo+
ID4KPiA+IHYyOgo+ID4gLSBBZGFwdCB0byBuZXcgbm9kZSBzdHJ1Y3R1cmUgKG9uZSBub2RlIHBl
ciBjb3JlLCBlYWNoIHdpdGggaXRzIG93bgo+ID4gICBJT01NVSkKPiA+IC0gU2V2ZXJhbCBtaXNj
LiBmaXhlcyBmcm9tIFNlYmFzdGlhbiBSZWljaGVsCj4gPgo+ID4gdjM6Cj4gPiAtIFNwbGl0IHJl
Z2lzdGVyIGJsb2NrIGluIGl0cyBjb25zdGl0dWVudCBzdWJibG9ja3MsIGFuZCBvbmx5IHJlcXVp
cmUKPiA+ICAgdGhlIG9uZXMgdGhhdCB0aGUga2VybmVsIHdvdWxkIGV2ZXIgdXNlIChOaWNvbGFz
IEZyYXR0YXJvbGkpCj4gPiAtIEdyb3VwIHN1cHBsaWVzIChSb2IgSGVycmluZykKPiA+IC0gRXhw
bGFpbiB0aGUgd2F5IGluIHdoaWNoIHRoZSB0b3AgY29yZSBpcyBzcGVjaWFsIChSb2IgSGVycmlu
ZykKPiA+Cj4gPiB2NDoKPiA+IC0gQ2hhbmdlIHJlcXVpcmVkIG5vZGUgbmFtZSB0byBucHVAIChS
b2IgSGVycmluZyBhbmQgS3J6eXN6dG9mIEtvemxvd3NraSkKPiA+IC0gUmVtb3ZlIHVubmVlZGVk
IGl0ZW1zOiAoS3J6eXN6dG9mIEtvemxvd3NraSkKPiA+IC0gRml4IHVzZSBvZiBtaW5JdGVtcy9t
YXhJdGVtcyAoS3J6eXN6dG9mIEtvemxvd3NraSkKPiA+IC0gQWRkIHJlZy1uYW1lcyB0byBsaXN0
IG9mIHJlcXVpcmVkIHByb3BlcnRpZXMgKEtyenlzenRvZiBLb3psb3dza2kpCj4gPiAtIEZpeCBl
eGFtcGxlIChLcnp5c3p0b2YgS296bG93c2tpKQo+ID4KPiA+IHY1Ogo+ID4gLSBSZW5hbWUgZmls
ZSB0byByb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLnlhbWwgKEtyenlzenRvZiBLb3psb3dza2kp
Cj4gPiAtIFN0cmVhbWxpbmUgY29tcGF0aWJsZSBwcm9wZXJ0eSAoS3J6eXN6dG9mIEtvemxvd3Nr
aSkKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJl
aWNoZWxAY29sbGFib3JhLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IFRvbWV1IFZpem9zbyA8dG9t
ZXVAdG9tZXV2aXpvc28ubmV0Pgo+ID4gLS0tCj4gPiAgLi4uL2JpbmRpbmdzL25wdS9yb2NrY2hp
cCxyazM1ODgtcmtubi1jb3JlLnlhbWwgICAgfCAxNDcgKysrKysrKysrKysrKysrKysrKysrCj4g
PiAgMSBmaWxlIGNoYW5nZWQsIDE0NyBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ucHUvcm9ja2NoaXAscmszNTg4LXJr
bm4tY29yZS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25wdS9yb2Nr
Y2hpcCxyazM1ODgtcmtubi1jb3JlLnlhbWwKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBp
bmRleCAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwLi45ZWI0MjYzNjdh
ZmNiYzAzYzM4N2Q0M2M0YjgyNTBjZGQxYjllZTg2Cj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbnB1L3JvY2tjaGlwLHJrMzU4OC1y
a25uLWNvcmUueWFtbAo+ID4gQEAgLTAsMCArMSwxNDcgQEAKPiA+ICsjIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPiA+ICslWUFNTCAxLjIK
PiA+ICstLS0KPiA+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL25wdS9yb2Nr
Y2hpcCxyazM1ODgtcmtubi1jb3JlLnlhbWwjCj4gPiArJHNjaGVtYTogaHR0cDovL2RldmljZXRy
ZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4gPiArCj4gPiArdGl0bGU6IE5ldXJhbCBQ
cm9jZXNzaW5nIFVuaXQgSVAgZnJvbSBSb2NrY2hpcAo+ID4gKwo+ID4gK21haW50YWluZXJzOgo+
ID4gKyAgLSBUb21ldSBWaXpvc28gPHRvbWV1QHRvbWV1dml6b3NvLm5ldD4KPiA+ICsKPiA+ICtk
ZXNjcmlwdGlvbjoKPiA+ICsgIFJvY2tjaGlwIElQIGZvciBhY2NlbGVyYXRpbmcgaW5mZXJlbmNl
IG9mIG5ldXJhbCBuZXR3b3JrcywgYmFzZWQgb24gTlZJRElBJ3MKPiA+ICsgIG9wZW4gc291cmNl
IE5WRExBIElQLgo+ID4gKwo+ID4gKyAgVGhlcmUgaXMgdG8gYmUgYSBub2RlIHBlciBlYWNoIGNv
cmUgaW4gdGhlIE5QVS4gSW4gUm9ja2NoaXAncyBkZXNpZ24gdGhlcmUKPiA+ICsgIHdpbGwgYmUg
b25lIGNvcmUgdGhhdCBpcyBzcGVjaWFsIGFuZCBuZWVkcyB0byBiZSBwb3dlcmVkIG9uIGJlZm9y
ZSBhbnkgb2YgdGhlCj4gPiArICBvdGhlciBjb3JlcyBjYW4gYmUgdXNlZC4gVGhpcyBzcGVjaWFs
IGNvcmUgaXMgY2FsbGVkIHRoZSB0b3AgY29yZSBhbmQgc2hvdWxkCj4gPiArICBoYXZlIHRoZSBj
b21wYXRpYmxlIHN0cmluZyB0aGF0IGNvcnJlc3BvbmRzIHRvIHRvcCBjb3Jlcy4KPgo+IElzIHRo
aXMgcmVhbGx5IGEgZGlzdGluY3Rpb24gaW4gdGhlIGgvdz8gSWYgeW91IGNoYW5nZSB3aGljaCBj
b3JlIGlzCj4gdGhlIHRvcCBvbmUgaW4gdGhlIERULCBkb2VzIGl0IHN0aWxsIHdvcms/CgpObywg
SSByZWFsbHkgbmVlZCB0byBwb3dlciBvbiB0aGF0IG9uZSBiZWZvcmUgdGhlIG90aGVycyBjYW4g
d29yayAodGhlCmZpcnN0IGNvcmUgaXMgYWxzbyBtYXJrZWQgYXMgc3BlY2lhbCBpbiBhIGRpYWdy
YW0gaW4gdGhlIFRSTSkuCgo+ID4gKwo+ID4gK3Byb3BlcnRpZXM6Cj4gPiArICAkbm9kZW5hbWU6
Cj4gPiArICAgIHBhdHRlcm46ICdebnB1QFthLWYwLTldKyQnCj4gPiArCj4gPiArICBjb21wYXRp
YmxlOgo+ID4gKyAgICBlbnVtOgo+ID4gKyAgICAgIC0gcm9ja2NoaXAscmszNTg4LXJrbm4tY29y
ZS10b3AKPiA+ICsgICAgICAtIHJvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUKPiA+ICsKPiA+ICsg
IHJlZzoKPiA+ICsgICAgbWF4SXRlbXM6IDMKPiA+ICsKPiA+ICsgIHJlZy1uYW1lczoKPiA+ICsg
ICAgaXRlbXM6Cj4gPiArICAgICAgLSBjb25zdDogcGMKPiA+ICsgICAgICAtIGNvbnN0OiBjbmEK
PiA+ICsgICAgICAtIGNvbnN0OiBjb3JlCj4gPiArCj4gPiArICBjbG9ja3M6Cj4gPiArICAgIG1p
bkl0ZW1zOiAyCj4gPiArICAgIG1heEl0ZW1zOiA0Cj4gPiArCj4gPiArICBjbG9jay1uYW1lczoK
PiA+ICsgICAgaXRlbXM6Cj4gPiArICAgICAgLSBjb25zdDogYWNsawo+ID4gKyAgICAgIC0gY29u
c3Q6IGhjbGsKPiA+ICsgICAgICAtIGNvbnN0OiBucHUKPiA+ICsgICAgICAtIGNvbnN0OiBwY2xr
Cj4gPiArICAgIG1pbkl0ZW1zOiAyCj4KPiBJdCBpcyBvZGQgdGhhdCB0aGUgbm9uLXRvcCBjb3Jl
cyBvbmx5IGhhdmUgYnVzIGNsb2NrcyBhbmQgbm8gbW9kdWxlCj4gY2xvY2suIEJ1dCBiYXNlZCBv
biB0aGUgY2xvY2sgbmFtZXMsIEknbSBndWVzc2luZyB0aGUgYWNsay9oY2xrIGFyZQo+IG5vdCBz
aGFyZWQsIGJ1dCB0aGUgbnB1IGFuZCBwY2xrIGFyZSBzaGFyZWQuIFNpbmNlIHlvdSBtYWtlIHRo
ZSB0b3AKPiBjb3JlIHByb2JlIGZpcnN0LCB0aGVuIGl0IHdpbGwgZW5hYmxlIHRoZSBzaGFyZWQg
Y2xvY2tzIGFuZCB0aGUKPiBub24tdG9wIGNvcmVzIGRvbid0IGhhdmUgdG8gd29ycnkgYWJvdXQg
dGhlbS4gSWYgc28sIHRoYXQgaXMgd3JvbmcgYXMKPiBpdCBpcyBsZXR0aW5nIHRoZSBzb2Z0d2Fy
ZSBkZXNpZ24gZGVmaW5lIHRoZSBiaW5kaW5ncy4KClllcywgSSB0aGluayBpdCdzIHByb2JhYmx5
IGFzIHlvdSBzYXksIGJ1dCBJIGRvbid0IGtub3cgaG93IEkgY291bGQKY2hlY2suIE1heWJlIEtl
dmVyLCBIZWlrbyBvciBTZWJhc3RpYW4gd291bGQgaGF2ZSBhbnkgaWRlYXM/CgpUaGFua3MsCgpU
b21ldQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
