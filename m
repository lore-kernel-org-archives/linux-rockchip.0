Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E385C369D5
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Apr 2025 23:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWZ2zLWpZF6yI3U/N8OrgNWBKYORQtISIdYkd54gSm8=; b=mLn2ae9KhioMqj
	KKQPE3kMObJCMJ53v4E8LRf6kR6U55FC961aJvMAANPsVU7INVnhXWW0ZDTBYHqOEQ0hnLUtIhiQw
	f5xjo6Ip4832oSMKvv9Jd3n4yrA35W/j3V5tScl2JV3NZvT7DGezULlhM9DyYafIbJ+8yYwifmYW2
	CjeB1ZMbCmGTUhRH+yymM9WAA8xhU96YwDb6n8v7hIYevBp8GYJxQGjkfRTk0uWN1ZrguTXRwH3PV
	f8VDqbCF012yxO0wCmEr5pNfX9v+XHIH/KDJQcgx0pUB0FS/+Fei9y1dyVzhFiu0FhxWm0QGJMnO8
	XigfCBCFYYbR5vkcU2uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u70L6-00000005OiX-02UB;
	Mon, 21 Apr 2025 23:14:12 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u70JD-00000005Odi-20Z0;
	Mon, 21 Apr 2025 23:12:16 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-223fb0f619dso50605275ad.1;
        Mon, 21 Apr 2025 16:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745277134; x=1745881934; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K7uD5qXzvc6aMulN+BeaNa7iatoiX4T3pgrjFm94VSk=;
        b=ONdZsEfVX8cpelRLo8IxvNf1L9v4LrX0N9X0U2BKMdW+jDAMqjY1NzxWIrVRI3OHks
         oqk4zXtRCgeSS7U4/k+/o3Ck3xYoPHEcWnMOEuPcqy1tTNBt9Sl4WqLIDiJXPIV337XP
         vgESHNYcCYaB/4gKbMNUDsxvEjgao2JP9lRBvxoVTXH043WdodwijPUwPwLxyqO6avAf
         sj4kXta1dubbwT+hoQzAoEliGcQia5I5sP/isUeLlbHtxw08Jek/50laJIcJXwdisBHI
         5AaqfypBM5SJRK1fBfhX6IudVB3fvufW46j7jESCajWvTOzf1kjJw5MEO5D92LpUafh7
         YyOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745277134; x=1745881934;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K7uD5qXzvc6aMulN+BeaNa7iatoiX4T3pgrjFm94VSk=;
        b=UcpWn5JhbwCTduookI9FQDQftOlneFMpo89/fGUP3sC0xxU/vkK/Q2Deh50h3igcdo
         2u4wFW5kAkRZ9uDcc7R5BcwHJRKKcyGLZMujSFBP7oxnQCfyRn+PcKnoJwsMifQxtO5K
         WZyMjgbqX5WmGj2+No68zh8TX52w3CTq3ipBeL/c4c8Tn+fONUGKpJtYr29AhNJGQ+vH
         YzTGL+ybExr+8LyP3JDB822C29q6IpRJDHrSlb14u2UQeEttCDCKJaIpPs6MV0JcumJf
         xxRtfiKxIa0jN8IJJBDKUjtspDbomwS1B1ZECy5mjmXbxmlkrT7cwJbP3YpV7NDQob8f
         wU4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUaclnnz7u6MpPjaOZfx/6UwonnJIK0srWpAvh8I1D0rjlzfgoYhCMCMkE5Ke62fpDVukCs62QiAAmhxVUZyOA=@lists.infradead.org, AJvYcCW3LIl9GsKyywN89GtMzXXs21gh9fIz/RqBuMDpTPc04D8nTURNJEMJvFrEZUGQhFkTxAZIUP0r2Q2gdBm9RVnZ@lists.infradead.org
X-Gm-Message-State: AOJu0YzXiAdoefItZV8AKXP/MTeH0+WgsRijRu9tEfDVwm7jN4yW9ljF
	sFMJLIbwI3wUBUKPIDnEBYyc4euS/WvHmmNbllA1y1xY92j7ceEz
X-Gm-Gg: ASbGncucSxlw3xc6s3yw8BjgxKRdU+dJbEyAsfLhoW6wKaN0Q9bIhHvmlG8M86X1AwQ
	Ij5XbrBHvpCxcJYJwpv86JQ+Sl7ev5VcXHYio606RRRvS9/beBMknKLN/atpg6H7KQn7VXccouK
	2OI5Z1bmIiw4pK2XIEwYCLvVr3NwP56LV9mh+yOH822sGUZ1Vw0pl1gHhcEC6oyrUsx1hNszIvE
	b9Q0K8Q3G/JU3H1WTih95TiF6qcqADy3L+tgoNQzvKUQpfs7kkbFjV9nRQur+XuEghJbyuRt/hb
	/uQ+SryKLyr4p9Bhf3NsGPl+vjla7yy44QGqcex4aiE2pmf6ZGau/g==
X-Google-Smtp-Source: AGHT+IHT5fKKS1SMCd+Tj+8NxbOpVvUcbxkPakCnNVQ1oPl2cEDp8mNkaefvPYVXcT9AzKeGfB9Oyg==
X-Received: by 2002:a17:902:f706:b0:224:1c41:a4cd with SMTP id d9443c01a7336-22c5356dfbbmr179816285ad.3.1745277134121;
        Mon, 21 Apr 2025 16:12:14 -0700 (PDT)
Received: from ?IPV6:2a02:8010:6606:0:4561:1890:fe60:cec1? ([2a02:8010:6606:0:4561:1890:fe60:cec1])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c50eceb74sm70766835ad.166.2025.04.21.16.12.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Apr 2025 16:12:13 -0700 (PDT)
Message-ID: <bda07179-1ff4-46e4-9dda-ece9c63fd613@gmail.com>
Date: Tue, 22 Apr 2025 00:12:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588-nanopc-t6: fix usb-c port
 functionality
Content-Language: en-GB
To: John Clark <inindev@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Marcin Juszkiewicz <mjuszkiewicz@redhat.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jonas Karlman <jonas@kwiboo.se>
References: <20250419023715.16811-1-inindev@gmail.com>
From: Hugh Cole-Baker <sigmaris@gmail.com>
In-Reply-To: <20250419023715.16811-1-inindev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_161215_526835_D478CFE4 
X-CRM114-Status: GOOD (  23.85  )
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

SGkgSm9obiwKCk9uIDE5LzA0LzIwMjUgMDM6MzcsIEpvaG4gQ2xhcmsgd3JvdGU6Cj4gVGhlIFVT
Qi1DIHBvcnQgb24gdGhlIE5hbm9QQy1UNiB3YXMgbm90IHByb3ZpZGluZyBWQlVTICh2YnVzNXYw
X3R5cGVjCj4gcmVndWxhdG9yIGRpc2FibGVkLCBncGlvLTU4IG91dCBsbykgZHVlIHRvIG1pc2Nv
bmZpZ3VyYXRpb24uIFRoZQo+IG9yaWdpbmFsIHNldHVwIHdpdGggcmVndWxhdG9yLWFsd2F5cy1v
biBhbmQgcmVndWxhdG9yLWJvb3Qtb24gZm9yY2VkCj4gdGhlIHBvcnQgb24sIG1hc2tpbmcgdGhl
IGlzc3VlLCBidXQgcmVtb3ZpbmcgdGhlc2UgcHJvcGVydGllcyByZXZlYWxlZAo+IHRoYXQgdGhl
IGZ1c2IzMDIgZHJpdmVyIHdhcyBub3QgZW5hYmxpbmcgdGhlIHJlZ3VsYXRvciBkeW5hbWljYWxs
eS4KPiAKPiBDaGFuZ2VzOgo+IC0gUmVtb3ZlZCByZWd1bGF0b3ItYWx3YXlzLW9uIGFuZCByZWd1
bGF0b3ItYm9vdC1vbiBmcm9tIHZidXM1djBfdHlwZWMKPiAgIGFuZCB2YnVzNXYwX3VzYiB0byBh
bGxvdyBkcml2ZXIgY29udHJvbC4KPiAtIENoYW5nZWQgcG93ZXItcm9sZSBmcm9tICJzb3VyY2Ui
IHRvICJkdWFsIiBpbiB0aGUgdXNiLWMtY29ubmVjdG9yCj4gICB0byBzdXBwb3J0IE9URyBmdW5j
dGlvbmFsaXR5Lgo+IC0gQWRkIHBkLXJldmlzaW9uID0gL2JpdHMvIDggPDB4MiAweDAgMHgxIDB4
Mj47IHRvIHRoZSBGVVNCMzAyTVBYIG5vZGUKPiAgIHRvIHNwZWNpZnkgVVNCIFBvd2VyIERlbGl2
ZXJ5IChQRCkgUmV2aXNpb24gMi4wLCBWZXJzaW9uIDEuMiwKPiAgIGVuc3VyaW5nIHRoZSBkcml2
ZXIgY29ycmVjdGx5IGFkdmVydGlzZXMgUEQgY2FwYWJpbGl0aWVzIGFuZAo+ICAgbmVnb3RpYXRl
cyBwb3dlciByb2xlcyAoc291cmNlL3NpbmspIHBlciB0aGUgRlVTQjMwMk1QWOKAmXMgc3VwcG9y
dGVkCj4gICBQRCBwcm90b2NvbC4KPiAtIEFkZGVkIG9wLXNpbmstbWljcm93YXR0IGFuZCBzaW5r
LXBkb3MgZm9yIHByb3BlciBzaW5rIG1vZGUKPiAgIGNvbmZpZ3VyYXRpb24gKDF3IG1pbiwgMTV3
IG1heCkuCj4gLSBBZGQgdHlwZWMtcG93ZXItb3Btb2RlID0gIjMuMEEiOyB0byBlbmFibGUgMy4w
QSAoMTVXKSBmYWxsYmFjayBmb3IKPiAgIG5vbi1QRCBVU0ItQyBkZXZpY2VzIHdpdGggdGhlIEZV
U0IzMDJNUFguCj4gLSBTZXQgdHJ5LXBvd2VyLXJvbGUgdG8gInNvdXJjZSIgdG8gcHJpb3JpdGl6
ZSBWQlVTIGVuYWJsZW1lbnQuCj4gLSBBZGp1c3RlZCB1c2JfaG9zdDBfeGhjaSBkcl9tb2RlIGZy
b20gImhvc3QiIHRvICJvdGciIGFuZCBhZGRlZAo+ICAgdXNiLXJvbGUtc3dpdGNoIGZvciBkdWFs
LXJvbGUgc3VwcG9ydC4KPiAKPiBUZXN0aW5nOgo+IC0gVmVyaWZpZWQgVkJVUyAoNVYpIGRlbGl2
ZXJ5IHRvIGEgc2luayBkZXZpY2UgKFVTQiB0aHVtYiBkcml2ZSkuCj4gLSBDb25maXJtZWQgVVNC
IGhvc3QgbW9kZSB3aXRoIGxzdXNiIGRldGVjdGluZyBjb25uZWN0ZWQgZGV2aWNlcy4KPiAtIFZh
bGlkYXRlZCBVU0IgZGV2aWNlIG1vZGUgd2l0aCBhZGIgZGV2aWNlcyB3aGVuIGNvbm5lY3RlZCB0
byBhIFBDLgo+IC0gVGVzdGVkIGR1YWwtcm9sZSAoT1RHKSBmdW5jdGlvbmFsaXR5IHdpdGggdHJ5
LXBvd2VyLXJvbGUgc2V0IHRvCj4gICAic291cmNlIiBhbmQgInNpbmsiOyAic291cmNlIiBwcmlv
cml0aXplcyBmYXN0ZXIgVkJVUyBhY3RpdmF0aW9uLgo+IC0gVmFsaWRhdGVkIGZ1bmN0aW9uYWxp
dHkgd2l0aCBhIG1vYmlsZSBkZXZpY2UsIGluY2x1ZGluZyBVU0IgUG93ZXIKPiAgIERlbGl2ZXJ5
LCBmaWxlIHRyYW5zZmVyLCBVU0IgdGV0aGVyaW5nLCBNSURJLCBhbmQgaW1hZ2UgdHJhbnNmZXIu
Cj4gLSBUZXN0ZWQgVVNCLUMgRXRoZXJuZXQgYWRhcHRlciBjb21wYXRpYmlsaXR5LCBlbnN1cmlu
ZyBwcm9wZXIKPiAgIG9wZXJhdGlvbiBpbiBob3N0IG1vZGUuCj4gLSBUZXN0ZWQgVVNCLUMgaHVi
IGNvbXBhdGliaWxpdHksIGVuc3VyaW5nIHByb3BlciBvcGVyYXRpb24gaW4gaG9zdCBtb2RlLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IEpvaG4gQ2xhcmsgPGluaW5kZXZAZ21haWwuY29tPgo+IC0tLQo+
ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW5hbm9wYy10Ni5kdHNpICAgfCAyMSArKysr
KysrKysrLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxMCBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODgtbmFub3BjLXQ2LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OC1uYW5vcGMtdDYuZHRzaQo+IGluZGV4IGNlY2ZiNzg4YmY5ZS4uOGYyYmQzMDc4NmQ5IDEw
MDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW5hbm9wYy10
Ni5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtbmFub3Bj
LXQ2LmR0c2kKPiBAQCAtMTc0LDggKzE3NCw2IEBAIHZidXM1djBfdHlwZWM6IHJlZ3VsYXRvci12
YnVzNXYwLXR5cGVjIHsKPiAgCQlncGlvID0gPCZncGlvMSBSS19QRDIgR1BJT19BQ1RJVkVfSElH
SD47Cj4gIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAgCQlwaW5jdHJsLTAgPSA8JnR5
cGVjNXZfcHdyZW4+Owo+IC0JCXJlZ3VsYXRvci1hbHdheXMtb247Cj4gLQkJcmVndWxhdG9yLWJv
b3Qtb247Cj4gIAkJcmVndWxhdG9yLW5hbWUgPSAidmJ1czV2MF90eXBlYyI7Cj4gIAkJcmVndWxh
dG9yLW1pbi1taWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4gIAkJcmVndWxhdG9yLW1heC1taWNyb3Zv
bHQgPSA8NTAwMDAwMD47Cj4gQEAgLTE4OCw4ICsxODYsNiBAQCB2YnVzNXYwX3VzYjogcmVndWxh
dG9yLXZidXM1djAtdXNiIHsKPiAgCQlncGlvID0gPCZncGlvNCBSS19QQjAgR1BJT19BQ1RJVkVf
SElHSD47Cj4gIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAgCQlwaW5jdHJsLTAgPSA8
JnVzYjV2X3B3cmVuPjsKPiAtCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+IC0JCXJlZ3VsYXRvci1i
b290LW9uOwo+ICAJCXJlZ3VsYXRvci1uYW1lID0gInZidXM1djBfdXNiIjsKPiAgCQlyZWd1bGF0
b3ItbWluLW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKPiAgCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9s
dCA9IDw1MDAwMDAwPjsKPiBAQCAtNDY1LDI0ICs0NjEsMzAgQEAgcmVndWxhdG9yLXN0YXRlLW1l
bSB7Cj4gIH07Cj4gIAo+ICAmaTJjNiB7Cj4gLQljbG9jay1mcmVxdWVuY3kgPSA8MjAwMDAwPjsK
PiAgCXN0YXR1cyA9ICJva2F5IjsKPiAgCj4gLQlmdXNiMzAyOiB0eXBlYy1wb3J0Y0AyMiB7Cj4g
Kwl1c2JjMDogdXNiLXR5cGVjQDIyIHsKPiAgCQljb21wYXRpYmxlID0gImZjcyxmdXNiMzAyIjsK
PiAgCQlyZWcgPSA8MHgyMj47Cj4gIAkJaW50ZXJydXB0LXBhcmVudCA9IDwmZ3BpbzA+Owo+ICAJ
CWludGVycnVwdHMgPSA8UktfUEQzIElSUV9UWVBFX0xFVkVMX0xPVz47Cj4gLQkJcGluY3RybC0w
ID0gPCZ1c2JjMF9pbnQ+Owo+ICAJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwkJcGlu
Y3RybC0wID0gPCZ1c2JjMF9pbnQ+Owo+ICAJCXZidXMtc3VwcGx5ID0gPCZ2YnVzNXYwX3R5cGVj
PjsKPiArCQlzdGF0dXMgPSAib2theSI7Cj4gIAo+ICAJCWNvbm5lY3RvciB7Cj4gIAkJCWNvbXBh
dGlibGUgPSAidXNiLWMtY29ubmVjdG9yIjsKPiAgCQkJZGF0YS1yb2xlID0gImR1YWwiOwo+ICAJ
CQlsYWJlbCA9ICJVU0ItQyI7Cj4gLQkJCXBvd2VyLXJvbGUgPSAic291cmNlIjsKPiArCQkJLyog
ZnVzYjMwMiBzdXBwb3J0cyBQRCBSZXYgMi4wIFZlciAxLjIgKi8KPiArCQkJcGQtcmV2aXNpb24g
PSAvYml0cy8gOCA8MHgyIDB4MCAweDEgMHgyPjsKPiArCQkJcG93ZXItcm9sZSA9ICJkdWFsIjsK
PiArCQkJb3Atc2luay1taWNyb3dhdHQgPSA8MTAwMDAwMD47Cj4gKwkJCXNpbmstcGRvcyA9IDxQ
RE9fRklYRUQoNTAwMCwgMzAwMCwgUERPX0ZJWEVEX1VTQl9DT01NKT47Cj4gIAkJCXNvdXJjZS1w
ZG9zID0gPFBET19GSVhFRCg1MDAwLCAyMDAwLCBQRE9fRklYRURfVVNCX0NPTU0pPjsKPiArCQkJ
dHJ5LXBvd2VyLXJvbGUgPSAic291cmNlIjsKPiArCQkJdHlwZWMtcG93ZXItb3Btb2RlID0gIjMu
MEEiOwoKQWNjb3JkaW5nIHRvIHRoZSBtYW51ZmFjdHVyZXIgd2lraSBbMV0gIlBvd2VyIE91dHB1
dCBDYXBhY2l0eSIgdGFibGUsIHRoZSBVU0ItQwpwb3J0IG1heGltdW0gb3V0cHV0IGlzIDVWLzJB
LiBTbyBJIHRoaW5rICIxLjVBIiB3b3VsZCBiZSBhIGJldHRlciB2YWx1ZSBoZXJlLgoKWzFdOiBo
dHRwczovL3dpa2kuZnJpZW5kbHllbGVjLmNvbS93aWtpL2luZGV4LnBocC9OYW5vUEMtVDYKCj4g
IAo+ICAJCQlwb3J0cyB7Cj4gIAkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiBAQCAtMTEzNSw5
ICsxMTM3LDggQEAgJnVzYl9ob3N0MF9vaGNpIHsKPiAgfTsKPiAgCj4gICZ1c2JfaG9zdDBfeGhj
aSB7Cj4gLQlkcl9tb2RlID0gImhvc3QiOwo+IC0Jc3RhdHVzID0gIm9rYXkiOwo+ICAJdXNiLXJv
bGUtc3dpdGNoOwo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICAKPiAgCXBvcnQgewo+ICAJCXVzYl9o
b3N0MF94aGNpX2RyZF9zdzogZW5kcG9pbnQgewoKYnIsIEh1Z2gKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
