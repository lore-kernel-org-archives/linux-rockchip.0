Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1F9BC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/XDui4zy/HBmW/9yzika4JzpMRVIusB82+7nJnUkXSU=; b=4HK6WRh7w4XaqO
	LkoILESwu5OPyylNt3yc85NN9OXdC1JDYfc2Hh+B88yyhU8XbjFeeTxyctUCKVg6Kum1EDL/mkqYB
	hCmEB4KUjSRMY5H3BXbTPFvPWYu0VgR3dJ2undUy19UAPY7EuJUplRLxR0643qBEaMhTrjV/VNSu0
	mp4IzuU5Ym5fs+UjULIwSQWFxW8yT9wTu+1C0v3LZIEiSRHq9Yp7I6glKbJToyPe8aEYDpNQyhdf8
	F+SPic92IPS1BtTgGV/njhdV+f+/RFzAm3NW/3PPKx0GS8bRuRSfd/qYmL9eiPJJBm7p7l2G/zRNr
	mZxHMI6mYpiEJa3acHCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrvOR-0000000Ef0f-0lT3;
	Wed, 03 Apr 2024 07:50:47 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrvOM-0000000Eewq-2Wtd
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Apr 2024 07:50:44 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-6e6b22af648so535652b3a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Apr 2024 00:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712130640; x=1712735440; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hyHSDC/vVjVH3KtBQTZvNF7eu/gn8gGU1GGy/JDCDjk=;
        b=lT9uSPTTMWNISoB4Itte4pxj+BnusOUH7S7Z+2ybSmPn7X84Xpbd9Hift9X2PEeU8w
         oyeuBl59jn2XnAs7DsM3Gc+1AU1mjUSh7GQgZhvCa+M0nJDeC/XHLJF5o17c2don5nie
         uj1vPKtvNqhfiQ1sO2FoDU+VwtQgG1NyXja6eRYUkneqRoq+SD9PfOC6T0DGRSBL05gL
         95U9Kbaj7JOTFvfFt+bwo9V9EqwBMVcnUrL5tcvDyyuOgoYyuyresFoeuhCnoMkzvPJ0
         6ioZmpNVk60zk8S5LJRJl6mWOM37SO7CNZ6rayJlYWhukYTvw9yBWf1zIoo3sw5Zpch/
         kwKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712130640; x=1712735440;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hyHSDC/vVjVH3KtBQTZvNF7eu/gn8gGU1GGy/JDCDjk=;
        b=qrgFCqqsUyPlmd0hVFnWsyNCN3XT4t9GEWZjX3X81bhOt0jNeGLZQUYTwX/hkLZE3W
         VwoZBvO9kjGwI2JEwa8sfFf0DRU+P3iWVjLLCne68IvkhrYSDoxWw8zdTORBcv/nGzw+
         k4Xpm0LXgK3ttzOBbnlOELVgSD0lVXXy//NXX8LYsD2Yajyrh1awFghJcQ9YNNF+V1js
         rUqFcvuaHZdU3bOlEi4wsxp46sOaGkp7uXN8ZycKulCgZbw3FRgDWPJU9Cqp3bhGaMjR
         O0WvDnrOTdSQLBWS9YwonXU8yzmlt7Hd1urBktnE/uKxrZ6Yk2RoeZq9BImaBhHgpWBU
         BQPw==
X-Forwarded-Encrypted: i=1; AJvYcCUT9U6+jSL+lR3LfUTzWtN+nnPxQSPMonmKPAc9KYFyy5wI1gXx5X94pKjs5oB3L0SvA6I2B4ET5iFP3jt1kunkmOsN3jfVHtVIzoRBV3FMKgws
X-Gm-Message-State: AOJu0YySqwvPVT+IJoGfVMzotqWFlnYA5ujUxdbBqbSYKIrfpavLqrlQ
	1aQV+QBxDCtt4iY1KPcoWMzhbxerF0Rqh1SCTZa4HXawNMaP2Ap8JmvtmXKIRSB0UfM017zlyko
	=
X-Google-Smtp-Source: AGHT+IGHxQcAvNq1SVAZKqs98Q6Tn8kDvER6z4KgHIbUtFfBKz7ADPqs9lBDYFyL3DdTX4eDyCwPow==
X-Received: by 2002:a17:902:ce8c:b0:1e0:c88f:654f with SMTP id f12-20020a170902ce8c00b001e0c88f654fmr2580878plg.33.1712130640300;
        Wed, 03 Apr 2024 00:50:40 -0700 (PDT)
Received: from thinkpad ([103.28.246.48])
        by smtp.gmail.com with ESMTPSA id z10-20020a170903018a00b001e0a8812ccesm12480324plg.262.2024.04.03.00.50.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 00:50:39 -0700 (PDT)
Date: Wed, 3 Apr 2024 13:20:34 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v2 00/18] Improve PCI memory mapping API
Message-ID: <20240403075034.GF25309@thinkpad>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240330041928.1555578-1-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_005042_696703_F7415B72 
X-CRM114-Status: GOOD (  27.05  )
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

T24gU2F0LCBNYXIgMzAsIDIwMjQgYXQgMDE6MTk6MTBQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gVGhpcyBzZXJpZXMgaW50cm9kdWNlcyB0aGUgbmV3IGZ1bmN0aW9ucyBwY2lfZXBj
X21hcF9hbGlnbigpLAo+IHBjaV9lcGNfbWVtX21hcCgpIGFuZCBwY2lfZXBjX21lbV91bm1hcCgp
IHRvIGltcHJvdmUgaGFuZGxpbmcgb2YgdGhlCj4gUENJIGFkZHJlc3MgbWFwcGluZyBhbGlnbm1l
bnQgY29uc3RyYWludHMgb2YgZW5kcG9pbnQgY29udHJvbGxlcnMgaW4gYQo+IGNvbnRyb2xsZXIg
aW5kZXBlbmRlbnQgbWFubmVyLgo+IAo+IFRoZSBpc3N1ZSBmaXhlZCBpcyB0aGF0IHRoZSBmaXhl
ZCBhbGlnbm1lbnQgZGVmaW5lZCBieSB0aGUgImFsaWduIiBmaWVsZAo+IG9mIHN0cnVjdCBwY2lf
ZXBjX2ZlYXR1cmVzIGFzc3VtZXMgdGhhdCB0aGUgYWxpZ25tZW50IG9mIHRoZSBlbmRwb2ludAo+
IG1lbW9yeSB1c2VkIHRvIG1hcCBhIFJDIFBDSSBhZGRyZXNzIHJhbmdlIGlzIGluZGVwZW5kZW50
IG9mIHRoZSBQQ0kKPiBhZGRyZXNzIGJlaW5nIG1hcHBlZC4gQnV0IHRoYXQgaXMgbm90IHRoZSBj
YXNlIGZvciB0aGUgcmszMzk5IFNvQwo+IGNvbnRyb2xsZXI6IGluIGVuZHBvaW50IG1vZGUsIHRo
aXMgY29udHJvbGxlciB1c2VzIHRoZSBsb3dlciBiaXRzIG9mIHRoZQo+IGxvY2FsIGVuZHBvaW50
IG1lbW9yeSBhZGRyZXNzIGFzIHRoZSBsb3dlciBiaXRzIGZvciB0aGUgUENJIGFkZHJlc3Nlcwo+
IGZvciBkYXRhIHRyYW5zZmVycy4gVGhhdCBpcywgd2hlbiBtYXBwaW5nIGxvY2FsIG1lbW9yeSwg
b25lIG11c3QgdGFrZQo+IGludG8gYWNjb3VudCB0aGUgbnVtYmVyIG9mIGJpdHMgb2YgdGhlIFJD
IFBDSSBhZGRyZXNzIHRoYXQgY2hhbmdlIGZyb20KPiB0aGUgc3RhcnQgYWRkcmVzcyBvZiB0aGUg
bWFwcGluZy4KPiAKPiBUbyBmaXggdGhpcywgdGhlIG5ldyBlbmRwb2ludCBjb250cm9sbGVyIG1l
dGhvZCAubWFwX2FsaWduIGlzIGludHJvZHVjZWQKPiBhbmQgY2FsbGVkIGZyb20gcGNpX2VwY19t
YXBfYWxpZ24oKS4gVGhpcyBtZXRob2QgaXMgb3B0aW9uYWwgYW5kIGZvcgo+IGNvbnRyb2xsZXJz
IHRoYXQgZG8gbm90IGRlZmluZSBpdCwgdGhlIG1hcHBpbmcgaW5mb3JtYXRpb24gcmV0dXJuZWQK
PiBpcyBiYXNlZCBvZiB0aGUgZml4ZWQgYWxpZ25tZW50IGNvbnN0cmFpbnQgYXMgZGVmaW5lZCBi
eSB0aGUgYWxpZ24KPiBmZWF0dXJlLgo+IAo+IFRoZSBmdW5jdGlvbnMgcGNpX2VwY19tZW1fbWFw
KCkgaXMgYSBoZWxwZXIgZnVuY3Rpb24gd2hpY2ggb2J0YWlucwo+IG1hcHBpbmcgaW5mb3JtYXRp
b24sIGFsbG9jYXRlcyBlbmRwb2ludCBjb250cm9sbGVyIG1lbW9yeSBhY2NvcmRpbmcgdG8KPiB0
aGUgbWFwcGluZyBzaXplIG9idGFpbmVkIGFuZCBtYXBzIHRoZSBtZW1vcnkuIHBjaV9lcGNfbWVt
X21hcCgpIHVubWFwcwo+IGFuZCBmcmVlcyB0aGUgZW5kcG9pbnQgbWVtb3J5Lgo+IAo+IFRoaXMg
c2VyaWVzIGlzIG9yZ2FuaXplZCBhcyBmb2xsb3dzOgo+ICAtIFBhdGNoIDEgdGlkeSB1cCB0aGUg
ZXBjIGNvcmUgY29kZQo+ICAtIFBhdGNoIDIgYW5kIDMgaW50cm9kdWNlIHRoZSBuZXcgbWFwX2Fs
aWduIGVuZHBvaW50IGNvbnRyb2xsZXIgbWV0aG9kCj4gICAgYW5kIHJlbGF0ZWQgZXBjIGZ1bmN0
aW9ucy4KPiAgLSBQYXRjaCA0IHRvIDYgbW9kaWZ5IHRoZSB0ZXN0IGVuZHBvaW50IGRyaXZlciB0
byB1c2UgdGhlc2UgbmV3Cj4gICAgZnVuY3Rpb25zIGFuZCBpbXByb3ZlIHRoZSBjb2RlIG9mIHRo
aXMgZHJpdmVyLgoKV2hpbGUgcG9zdGluZyB0aGUgbmV4dCB2ZXJzaW9uLCBwbGVhc2Ugc3BsaXQg
dGhlIGVuZHBvaW50IHBhdGNoZXMgaW50byBhCnNlcGFyYXRlIHNlcmllcy4gSXQgaGVscHMgaW4g
Y29kZSByZXZpZXcgYW5kIGNhbiBiZSBhcHBsaWVkIHNlcGFyYXRlbHkuCgotIE1hbmkKCj4gIC0g
RmluYWxseSwgUGF0Y2ggNyB0byAxOCBmaXggdGhlIHJrMzM5OSBlbmRwb2ludCBkcml2ZXIsIGRl
ZmluaW5nIGEKPiAgICAubWFwX2FsaWduIG1ldGhvZCBmb3IgaXQgYW5kIGltcHJvdmluZyBpdHMg
b3ZlcmFsbCBjb2RlIHJlYWRhYmlsaXR5Cj4gICAgYW5kIGZlYXR1cmVzLgo+IAo+IENoYW5nZXMg
ZnJvbSB2MToKPiAgLSBDaGFuZ2VkIHBjaV9lcGNfY2hlY2tfZnVuYygpIHRvIHBjaV9lcGNfZnVu
Y3Rpb25faXNfdmFsaWQoKSBpbiBwYXRjaAo+ICAgIDEuCj4gIC0gUmVtb3ZlZCBwYXRjaCAiUENJ
OiBlbmRwb2ludDogSW1wcm92ZSBwY2lfZXBjX21lbV9hbGxvY19hZGRyKCkiCj4gICAgKGZvcm1l
ciBwYXRjaCAyIG9mIHYxKQo+ICAtIFZhcmlvdXMgdHlwb3MgY2xlYW51cHMgYWxsIG92ZXIuIEFs
c28gZml4ZWQgc29tZSBibGFuayBzcGFjZQo+ICAgIGluZGVudGF0aW9uLgo+ICAtIEFkZGVkIHJl
dmlldyB0YWdzCj4gCj4gRGFtaWVuIExlIE1vYWwgKDE3KToKPiAgIFBDSTogZW5kcG9pbnQ6IElu
dHJvZHVjZSBwY2lfZXBjX2Z1bmN0aW9uX2lzX3ZhbGlkKCkKPiAgIFBDSTogZW5kcG9pbnQ6IElu
dHJvZHVjZSBwY2lfZXBjX21hcF9hbGlnbigpCj4gICBQQ0k6IGVuZHBvaW50OiBJbnRyb2R1Y2Ug
cGNpX2VwY19tZW1fbWFwKCkvdW5tYXAoKQo+ICAgUENJOiBlbmRwb2ludDogdGVzdDogVXNlIHBj
aV9lcGNfbWVtX21hcC91bm1hcCgpCj4gICBQQ0k6IGVuZHBvaW50OiB0ZXN0OiBTeW5jaHJvbm91
c2x5IGNhbmNlbCBjb21tYW5kIGhhbmRsZXIgd29yawo+ICAgUENJOiBlbmRwb2ludDogdGVzdDog
SW1wbGVtZW50IGxpbmtfZG93biBldmVudCBvcGVyYXRpb24KPiAgIFBDSTogcm9ja2NoaXAtZXA6
IEZpeCBhZGRyZXNzIHRyYW5zbGF0aW9uIHVuaXQgcHJvZ3JhbW1pbmcKPiAgIFBDSTogcm9ja2No
aXAtZXA6IFVzZSBhIG1hY3JvIHRvIGRlZmluZSBFUCBjb250cm9sbGVyIC5hbGlnbiBmZWF0dXJl
Cj4gICBQQ0k6IHJvY2tjaGlwLWVwOiBJbXByb3ZlIHJvY2tjaGlwX3BjaWVfZXBfdW5tYXBfYWRk
cigpCj4gICBQQ0k6IHJvY2tjaGlwLWVwOiBJbXByb3ZlIHJvY2tjaGlwX3BjaWVfZXBfbWFwX2Fk
ZHIoKQo+ICAgUENJOiByb2NrY2hpcC1lcDogSW1wbGVtZW50IHRoZSBtYXBfYWxpZ24gZW5kcG9p
bnQgY29udHJvbGxlciBvcGVyYXRpb24KPiAgIFBDSTogcm9ja2NoaXAtZXA6IFJlZmFjdG9yIHJv
Y2tjaGlwX3BjaWVfZXBfcHJvYmUoKSBtZW1vcnkgYWxsb2NhdGlvbnMKPiAgIFBDSTogcm9ja2No
aXAtZXA6IFJlZmFjdG9yIHJvY2tjaGlwX3BjaWVfZXBfcHJvYmUoKSBNU0ktWCBoaWRpbmcKPiAg
IFBDSTogcm9ja2NoaXAtZXA6IFJlZmFjdG9yIGVuZHBvaW50IGxpbmsgdHJhaW5pbmcgZW5hYmxl
Cj4gICBQQ0k6IHJvY2tzaGlwLWVwOiBJbnRyb2R1Y2Ugcm9ja2NoaXBfcGNpZV9lcF9zdG9wKCkK
PiAgIFBDSTogcm9ja2NoaXAtZXA6IEltcHJvdmUgbGluayB0cmFpbmluZwo+ICAgUENJOiByb2Nr
Y2hpcC1lcDogSGFuZGxlIFBFUlNUIyBzaWduYWwgaW4gZW5kcG9pbnQgbW9kZQo+IAo+IFdpbGZy
ZWQgTWFsbGF3YSAoMSk6Cj4gICBkdC1iaW5kaW5nczogcGNpOiByb2NrY2hpcCxyazMzOTktcGNp
ZS1lcDogQWRkIGVwLWdwaW9zIHByb3BlcnR5Cj4gCj4gIC4uLi9iaW5kaW5ncy9wY2kvcm9ja2No
aXAscmszMzk5LXBjaWUtZXAueWFtbCB8ICAgMyArCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
cGNpZS1yb2NrY2hpcC1lcC5jICAgICB8IDM5MyArKysrKysrKysrKysrKy0tLS0KPiAgZHJpdmVy
cy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmMgICAgICAgIHwgIDE3ICstCj4gIGRyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oICAgICAgICB8ICAyMiArCj4gIGRyaXZl
cnMvcGNpL2VuZHBvaW50L2Z1bmN0aW9ucy9wY2ktZXBmLXRlc3QuYyB8IDM5MCArKysrKysrKyst
LS0tLS0tLQo+ICBkcml2ZXJzL3BjaS9lbmRwb2ludC9wY2ktZXBjLWNvcmUuYyAgICAgICAgICAg
fCAyMTMgKysrKysrKy0tLQo+ICBpbmNsdWRlL2xpbnV4L3BjaS1lcGMuaCAgICAgICAgICAgICAg
ICAgICAgICAgfCAgMzkgKysKPiAgNyBmaWxlcyBjaGFuZ2VkLCA3NjggaW5zZXJ0aW9ucygrKSwg
MzA5IGRlbGV0aW9ucygtKQo+IAo+IC0tIAo+IDIuNDQuMAo+IAoKLS0gCuCuruCuo+Cuv+CuteCu
o+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
