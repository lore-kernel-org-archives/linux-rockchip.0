Return-Path: <SRS0=PznR=FL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E141C4361B
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 03:25:25 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0761322CA0
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 03:25:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0761322CA0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vVGrQTdZVMrCyY131ulUXiNfOVGnFhduqa+VFzYevJ0=; b=M08EkxlZzQ807lUJVZPgD56Dk
	cNbiZwB6Cyndk92iIZbS4n50OewJFCLCKKhARrhXeraX1sQdZpTfI7WgZSPWpWWfYE4QXXrELvviJ
	Z7Ue6EvpP51dSujSQbUwhFLRlQIFq7QKOtTnRoVzrbGyYIZ2fjFKkvJ3raS7fKyKae1E0dRh+jS2/
	/NLd2bAYlk9R3H9nk4Pl+BsFtfEXugFYQu6S29m24b8zuvmNlWHQktHPfeDAkQskjdrRvNaq+8CMi
	SCAj6SDPZ26RWjNlgGcz49T8e3JDVnUOO47j0Rws5JZHAs+1VY1abr5tvhuX8DynvpKWk+/8kHhmL
	/ZEGHgWAQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1km79K-000505-NN; Mon, 07 Dec 2020 03:25:18 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1km79H-0004zY-Um; Mon, 07 Dec 2020 03:25:17 +0000
Received: by mail-oi1-x244.google.com with SMTP id s2so4461047oij.2;
 Sun, 06 Dec 2020 19:25:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=C2Ix5oeKbqJKBSFQum17pYUeNiQgWG4qBDaCP6pF+9E=;
 b=pzZKsSd8MbNoUDnMdPCVc5u6LHTCjTVi1zdUIqAWpWGrKhn2SS+tAQeQc1vQfqA/M1
 uo8emwG4ei0ap7lYcKus+vFJPiNL9SkPX5E4aXMBBvKSXAMv+GrpZrRpXHAngVWkMhZd
 klK8iivt8DWyHnAvHGkqeKM1A5/ecGxXpIvop6wwC85CtjCZLEoGJz1YariaxwQOd4Zm
 uqNOHPLKB8eFtTXr1BHAUBlQr03aC+bJPtTF9wkNuDxCLJUuwzK8mgvxbRXeo+ieU7Zu
 dGmAKaT/2GABKN60dHgCOR2thZ66V1CUcFOY5jb1kZDWWyVqgLj/rGwqLg55Mz3hUZyh
 iFgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=C2Ix5oeKbqJKBSFQum17pYUeNiQgWG4qBDaCP6pF+9E=;
 b=uAI28prveX9xpQDpufxxWrGgi5LmWMjoJ7Vk5UK+ZtQcGQoxmlGA0tMuJh1WLT258j
 HLepUbgqZMzL0RMJ/0QvsoQSkCjy9NGdEe9LrbRzAEbXlXrG3uv2tEGGJQc7+NB405Kk
 toYDWzkDHPOIUKkzqyXp8fuUiLpQWQhMgJ5dMUW+mHHvDffgGH8xd0mbL9n4otmUGedD
 Toh+iBH8mip/Jom5JmXbaEuRyJWhT3QkXPhpfTw3Uebcid9rcI2H0dTcosBP8+cdnk3+
 pSTBwCxWJyMrSwF3IAh+/pEWj7bTBQGsc2ignw6yM8+iOwrS2aysY0iWtBmuH5F/yQEv
 dnvA==
X-Gm-Message-State: AOAM5312P9gkzRMzwHa2FbQ5qhptXjwMB2JsvG0Wwzg4Q1hGPTQatxfe
 OlUzepG6cnHKVRk2anhSOl08KXq/8G0=
X-Google-Smtp-Source: ABdhPJzczOydwnK1CTI9pP9bxm9+oAl7Jgo4Mw8k7GQ6HD6zylEV81DWrC05uDG06SC4srcr560HGA==
X-Received: by 2002:aca:3d0b:: with SMTP id k11mr11306704oia.122.1607311511211; 
 Sun, 06 Dec 2020 19:25:11 -0800 (PST)
Received: from ?IPv6:2600:1700:dfe0:49f0:98c0:b1b6:3436:9662?
 ([2600:1700:dfe0:49f0:98c0:b1b6:3436:9662])
 by smtp.gmail.com with ESMTPSA id k5sm2350693oot.30.2020.12.06.19.25.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 06 Dec 2020 19:25:10 -0800 (PST)
Subject: Re: [PATCH v6 1/5] PCI: Unify ECAM constants in native PCI Express
 drivers
To: =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jim Quinlan <james.quinlan@broadcom.com>
References: <20201129230743.3006978-1-kw@linux.com>
 <20201129230743.3006978-2-kw@linux.com> <X808JJGeIREwqIjb@rocinante>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <094b314f-7f61-d0fd-fd63-c9c4da9e84a8@gmail.com>
Date: Sun, 6 Dec 2020 19:25:06 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <X808JJGeIREwqIjb@rocinante>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201206_222516_067163_60E1B026 
X-CRM114-Status: GOOD (  19.09  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Paul Mackerras <paulus@samba.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Jonathan Chocron <jonnyc@amazon.com>, Toan Le <toan@os.amperecomputing.com>,
 Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Michal Simek <michal.simek@xilinx.com>,
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 Jonathan Derrick <jonathan.derrick@intel.com>, linux-pci@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, linux-rpi-kernel@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Zhou Wang <wangzhou1@hisilicon.com>, Robert Richter <rrichter@marvell.com>,
 linuxppc-dev@lists.ozlabs.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

K0ppbVEsCgpPbiAxMi82LzIwMjAgMTI6MTYgUE0sIEtyenlzenRvZiBXaWxjennFhHNraSB3cm90
ZToKPiBIZWxsbyBOaWNvbGFzLCBGbG9yaWFuIGFuZCBGbG9yaWFuLAo+IAo+IFsuLi5dCj4+IC0v
KiBDb25maWd1cmF0aW9uIHNwYWNlIHJlYWQvd3JpdGUgc3VwcG9ydCAqLwo+PiAtc3RhdGljIGlu
bGluZSBpbnQgYnJjbV9wY2llX2NmZ19pbmRleChpbnQgYnVzbnIsIGludCBkZXZmbiwgaW50IHJl
ZykKPj4gLXsKPj4gLQlyZXR1cm4gKChQQ0lfU0xPVChkZXZmbikgJiAweDFmKSA8PCBQQ0lFX0VY
VF9TTE9UX1NISUZUKQo+PiAtCQl8ICgoUENJX0ZVTkMoZGV2Zm4pICYgMHgwNykgPDwgUENJRV9F
WFRfRlVOQ19TSElGVCkKPj4gLQkJfCAoYnVzbnIgPDwgUENJRV9FWFRfQlVTTlVNX1NISUZUKQo+
PiAtCQl8IChyZWcgJiB+Myk7Cj4+IC19Cj4+IC0KPj4gIHN0YXRpYyB2b2lkIF9faW9tZW0gKmJy
Y21fcGNpZV9tYXBfY29uZihzdHJ1Y3QgcGNpX2J1cyAqYnVzLCB1bnNpZ25lZCBpbnQgZGV2Zm4s
Cj4+ICAJCQkJCWludCB3aGVyZSkKPj4gIHsKPj4gQEAgLTcxNiw3ICs3MDQsNyBAQCBzdGF0aWMg
dm9pZCBfX2lvbWVtICpicmNtX3BjaWVfbWFwX2NvbmYoc3RydWN0IHBjaV9idXMgKmJ1cywgdW5z
aWduZWQgaW50IGRldmZuLAo+PiAgCQlyZXR1cm4gUENJX1NMT1QoZGV2Zm4pID8gTlVMTCA6IGJh
c2UgKyB3aGVyZTsKPj4gIAo+PiAgCS8qIEZvciBkZXZpY2VzLCB3cml0ZSB0byB0aGUgY29uZmln
IHNwYWNlIGluZGV4IHJlZ2lzdGVyICovCj4+IC0JaWR4ID0gYnJjbV9wY2llX2NmZ19pbmRleChi
dXMtPm51bWJlciwgZGV2Zm4sIDApOwo+PiArCWlkeCA9IFBDSUVfRUNBTV9PRkZTRVQoYnVzLT5u
dW1iZXIsIGRldmZuLCAwKTsKPj4gIAl3cml0ZWwoaWR4LCBwY2llLT5iYXNlICsgUENJRV9FWFRf
Q0ZHX0lOREVYKTsKPj4gIAlyZXR1cm4gYmFzZSArIFBDSUVfRVhUX0NGR19EQVRBICsgd2hlcmU7
Cj4+ICB9Cj4gWy4uLl0KPiAKPiBQYXNzaW5nIHRoZSBoYXJkLWNvZGVkIDAgYXMgdGhlICJyZWci
IGFyZ3VtZW50IGhlcmUgbmV2ZXIgYWN0dWFsbHkgZGlkCj4gYW55dGhpbmcsIHRodXMgdGhlIDMy
IGJpdCBhbGlnbm1lbnQgd2FzIG5ldmVyIGNvcnJlY3RseSBlbmZvcmNlZC4KPiAKPiBNeSBxdWVz
dGlvbiB3b3VsZCBiZTogc2hvdWxkIHRoaXMgYmUgMzIgYml0IGFsaWduZWQ/ICBJdCBzZWVtcyBs
aWtlIHRoZQo+IGludGVudGlvbiB3YXMgdG8gcGVyaGFwcyBtYWtlIHRoZSBhbGlnbm1lbnQ/ICBJ
IGFtIHNhZGx5IG5vdCBpbnRpbWF0ZWx5Cj4gZmFtaWxpYXIgd2l0aCBoaXMgaGFyZHdhcmUsIHNv
IEkgYW0gbm90IHN1cmUgaWYgdGhlcmUgaXMgc29tZXRoaW5nIHRvCj4gZml4IGhlcmUgb3Igbm90
Lgo+IAo+IEFsc28sIEkgd29uZGVyIHdoZXRoZXIgaXQgd291bGQgYmUgc2FmZSB0byBwYXNzIHRo
ZSBvZmZzZXQgKHRoZSAid2hlcmUiCj4gdmFyaWFibGUpIHJhdGhlciB0aGFuIGhhcmQtY29kZWQg
MD8KPiAKPiBUaGFuayB5b3UgZm9yIGhlbHAgaW4gYWR2YW5jZSEKPiAKPiBCam9ybiBhbHNvIGFz
a2VkIHRoZSBzYW1lIHF1ZXN0aW9uOgo+ICAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgt
cGNpLzIwMjAxMTIwMjAzNDI4LkdBMjcyNTExQGJqb3JuLVByZWNpc2lvbi01NTIwLwo+IAo+IEty
enlzenRvZgo+IAoKLS0gCkZsb3JpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
