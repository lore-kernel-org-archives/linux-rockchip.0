Return-Path: <SRS0=qNMI=LZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 364C6C11F64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 18:14:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C180C61285
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 18:14:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C180C61285
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B3wsV7Otec9zqiAa30bBNmC5d7JgZsyOf7PGuD9JQQI=; b=bbU/hFe518/mMW
	1xGCI0Y+EqvYeSa1yaQnlGlvIyTqutF2l8Excmgs32mZX2/zoQVEovLe/N705+9lEFeM25vNnroVA
	mGwx/y/LVGqVq7gLvIk/BwCXTgQEWV856ae5mM447lqh1xGnkCWXNBmy8DDVOTl5galLXt+foB2Uj
	Oy28EwtGClWXIu5yuE7dr+rYxrP4X09dJTpX6aOKfPLpAIUwXrYBjW4wnYEKcUAZ6NLu9x/NbSAf/
	HYNIUz4d5e4AnGD/mUTeQ90Bqmy8D3AOhT404+o0mlwT6i9HbC5QgYhLtHDiB4tC4TJGhdOETEPQH
	9tMmNTtS11+dco5oRWwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lz1CK-000jLr-8v; Thu, 01 Jul 2021 18:14:00 +0000
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lz1C6-000jIB-Q1
 for linux-rockchip@lists.infradead.org; Thu, 01 Jul 2021 18:13:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1625163224;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CywOQuoVk5N72tkIO6gfgUt+pTez87wevGV8+pLajjo=;
 b=hv3clhl4ANFcmDgXTajiYKQar8RI+L7e0e7Gau7IdNMzyFSvzOEt/kdYBFerC6GS6k05Y0
 +qpclpoH58YQroYyDvJHPBb2tCLgpPQB8grbJe46tlIxgPkWWSWwRGSGV7Uk/wmj8ormqR
 xuyuLB1aeGfDuzB3MB/OSk9EFL4+Kv0=
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-215-gmiLrUBLPzOP9Ov4wjaq5w-1; Thu, 01 Jul 2021 14:13:43 -0400
X-MC-Unique: gmiLrUBLPzOP9Ov4wjaq5w-1
Received: by mail-io1-f70.google.com with SMTP id
 i13-20020a5d88cd0000b02904e5ab8bdc6cso4986472iol.22
 for <linux-rockchip@lists.infradead.org>; Thu, 01 Jul 2021 11:13:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=CywOQuoVk5N72tkIO6gfgUt+pTez87wevGV8+pLajjo=;
 b=mFrb5C118ySD/qzcAJ1xcNriNf9y5JgHF77SqP5QENNukIFkF2L1gzXYCeTGNwNwJA
 R+Qr12GteXsQc9hicoiIXwRgnW5U30nkuTQSroCWJ2P2rHlnmIF4dakluccvkVBNGuXj
 KqwQbpNCYPiyWh4zE4NeaQX8KepPHHyfJS1LZDOEbbKD/OHbKJzmid1SHCAF6tvMtgkx
 1pz5BzurKLULK5Yxe7738md4MVqWN1eoE+5+dMEMQW/fSio//n/UCB8VAfLn29Z8C/0r
 yQszrlzO+2YmlZ4WK6bcu21nEzpUbnzusoDcspZhLChBPNOPNtntsX0tlAh/kCzwSmT1
 uVUA==
X-Gm-Message-State: AOAM530Utvmb5ozmDdFBq1MlY4VivM68GSNPvaeEe/Rnlcv5j2h7y8Ho
 e/ZkLbzINGkxcApjQ2+xJbr+I5d/5nVrXJsS+K8MPzbhNEVT01eGA7S79piemy3HBqyOx/wSFom
 aDFd/WUbFz4XPrhOWUQu8gWDSy+vxBh5r
X-Received: by 2002:a92:ddc6:: with SMTP id d6mr472171ilr.51.1625163222700;
 Thu, 01 Jul 2021 11:13:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzHTXwr1EsWNLVHHiri1W3U3TZItD53EsA6YVI/BP/RUPjAgrPo2OaUFyrUry8nZ0eZOCOiCw==
X-Received: by 2002:a92:ddc6:: with SMTP id d6mr472153ilr.51.1625163222422;
 Thu, 01 Jul 2021 11:13:42 -0700 (PDT)
Received: from kasuf.ausil.us (207-179-239-100.mtco.com. [207.179.239.100])
 by smtp.gmail.com with ESMTPSA id q8sm285806iot.30.2021.07.01.11.13.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Jul 2021 11:13:42 -0700 (PDT)
Message-ID: <9a144e2fed4fe6f4eb3c1c88a51d72e3db5a3cee.camel@redhat.com>
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: helios64: fixup USB setup
From: Dennis Gilmore <dgilmore@redhat.com>
To: Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>, 
 linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, open list
 <linux-kernel@vger.kernel.org>
Date: Thu, 01 Jul 2021 13:13:26 -0500
In-Reply-To: <dbb04649-d56c-32ac-913c-5b5795851bf4@kleine-koenig.org>
References: <20210701004043.18585-1-dgilmore@redhat.com>
 <01f1b032-14a8-a6fa-9063-23de65fc6f43@kleine-koenig.org>
 <f46b234e0aaf4356804d5e1446910bbedcbddb51.camel@redhat.com>
 <dbb04649-d56c-32ac-913c-5b5795851bf4@kleine-koenig.org>
User-Agent: Evolution 3.40.2 (3.40.2-1.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=dgilmore@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210701_111346_943781_3C88E125 
X-CRM114-Status: GOOD (  27.45  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCAyMDIxLTA3LTAxIGF0IDE1OjM1ICswMjAwLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90
ZToKPiBIZWxsbyBEZW5uaXMsCj4gCj4gT24gNy8xLzIxIDI6NTkgUE0sIERlbm5pcyBHaWxtb3Jl
IHdyb3RlOgo+ID4gT24gVGh1LCAyMDIxLTA3LTAxIGF0IDExOjMxICswMjAwLCBVd2UgS2xlaW5l
LUvDtm5pZyB3cm90ZToKPiA+ID4gSGVsbG8sCj4gPiA+IAo+ID4gPiBPbiA3LzEvMjEgMjo0MCBB
TSwgRGVubmlzIEdpbG1vcmUgd3JvdGU6Cj4gPiA+ID4gV2l0aG91dCB0aGUgdXNiZHJkX2R3YzNf
MSBub2RlIGRlZmluZWQgdS1ib290IHdpbGwgdGhyb3cgYW4KPiA+ID4gPiBlcnJvcgo+ID4gPiA+
IGFuZAo+ID4gPiA+IHJlc2V0IHRoZSBzeXN0ZW0uCj4gPiA+IAo+ID4gPiBJIHdvbmRlciBpZiB0
aGlzIHNob3VsZCBiZXR0ZXIgYmUgZml4ZWQgaW4gdS1ib290IHRoZW4/IQo+ID4gPiAKPiA+ID4g
PiBBbGwgb3RoZXIgcmszMzk5IHN5c3RlbXMgdXNlIHRoaXMgZm9ybWF0Cj4gPiA+IAo+ID4gPiBU
aGlzIGlzIHRydWUgZm9yIHRoZSBkd2Mgbm9kZXMsIGhvd2V2ZXIgZm9yIHRoZSB1c2IyIG5vZGVz
IHRoZXJlCj4gPiA+IGFyZQo+ID4gPiBzZXZlcmFsIHRoYXQgdXNlIHRoaXMgaWRpb20gKGFuZCBl
dmVuIHJlcGVhdCB0aGUgbGFiZWwgbmFtZSksIHNlZQo+ID4gPiBmb3IKPiA+ID4gZXhhbXBsZSB0
aGUgJnUycGh5MCBub2RlIGluCj4gPiA+IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
Mzk5LXJvY2twcm82NC5kdHNpIC4KPiA+ID4gCj4gPiAKPiA+IGxvb2tpbmcgYXQgdGhhdCBmaWxl
IGlzIHdoZXJlIEkgZ290IHRoZSBpZGVhIHRvIHNldCBpdCB1cCBhcyBJIGhhdmUKPiA+IHByb3Bv
c2VkLCBpdCBmb2xsb3dzIHRoZSBmb3JtYXQgSSBoYXZlIHN1Ym1pdHRlZAo+IAo+IEkgZ3Vlc3Mg
eW91IGRpZG4ndCByZWFkIGV4YWN0bHkgd2hhdCBJIHdyb3RlIGFuZCBvbmx5IGxvb2tlZCBhdAo+
ICZ1c2JkcmQqIAo+IGJ1dCBub3QgJnUycGh5MC4KCkhpIFV3ZSwKCkkgZGlkIHJlYWQgd2hhdCB5
b3UgcG9pbnRlZCBhdCwgdGhlIGlzc3VlIGlzIHRoYXQgaXMgYWxyZWFkeSBkZWZpbmVkIGluCmFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kgYW5kIGFsbCB0aGF0IGlzIG5l
ZWRlZCBpdCB0bwpzZXQgdGhlIHN0YXR1cyB0byBva2F5IGFuZCBtaW5vciBlbmFibGVtZW50LiBh
cyBEVEMgbWVyZ2VzIGFsbCB0aGUKc25pcHBldHMgdG9nZXRoZXIgdGhleSBlbmQgdXAgaW4gdGhl
IHJpZ2h0IHBsYWNlIGFuZCBkb2luZyB0aGUgcmlnaHQKdGhpbmcsIHRoZSBhcHByb2FjaCB5b3Ug
dG9vayBpcyBkaWZmZXJlbnQgdG8gYWxsIHRoZSBvdGhlciBib2FyZHMgSQpsb29rZWQgYXQgYW5k
IHNlZW1pbmdseSBjYXVzZXMgaXNzdWVzIGluIHUtYm9vdC4gSSBkaWQgbm90IGdldCBmYXIKZW5v
dWdoIGluIGJvb3RpbmcgdG8gdmVyaWZ5IHRoZSBzdGF0ZSBpbiBsaW51eCBhcyBJIGFtIHVwZGF0
aW5nIHUtYm9vdAphcyBJIGdvIGFuZCB0ZXN0aW5nIHVzaW5nIHUtYm9vdHMgZHRiIGZvciBzaW1w
bGljdHkgc2FrZS4gSXQgcXVpdGUKbGlrZWx5IGlzIGEgYnVnIGluIHUtYm9vdCB0aGF0IGl0IHJl
c2V0cyB0aGUgc3lzdGVtLCBhdCB0aGUgc2FtZSB0aW1lIEkKZG8gbm90IHRoaW5rIHRoYXQgZG9p
bmcgaXQgZGlmZmVyZW50bHkgdG8gaG93IHRoZSBvdGhlciBib2FyZHMgYXJlCmltcGxlbWVudGVk
IGlzIHJpZ2h0IGVpdGhlci4gVGhlcmUgaXMgc3RpbGwgYSBsb3Qgb2YgdGhlIGhhcmR3YXJlIGlu
CnRoZSBzeXN0ZW0gdGhhdCBpcyBub3QgZGVmaW5lZCBpbiB0aGUgZGV2aWNldHJlZSBmaWxlLCBp
bmNsdWRpbmcgYSBsb3QKb2YgdGhlIHVzYiBzdGFjay4KCkRlbm5pcwoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
