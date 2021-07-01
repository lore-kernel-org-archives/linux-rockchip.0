Return-Path: <SRS0=qNMI=LZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 508B2C11F64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 13:00:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 025F6613CE
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 13:00:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 025F6613CE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7+8/JSvbORiPZD281MSXhLwwKhsDkI3r8ANyrb70No=; b=C610GUZM7Y+ELh
	PcaDKFe6CA2yXkUOGjN4BJr7EOvgAa9G9oieqXR4tqzffjy4yD3ZkPEZIKiEOaoq6RLhpTDOfTz9j
	IdtDCvuuCLLUoCzqFD3uZ4UHiYVfG6scIY+U4TA/2tYE5f3kDajdO41yMWJxKMwR8BZAZZS4bLK2p
	4D38thxpQhN9fRc7vJBh9W3SBpNuyED8TsWRTauIELHI6YDynSfXw5DVGFkOwvOO6JI3RDQLeNWmw
	Zxiwy9H1AQ7h+Opd7F2krXb8CYnDlGgKyxJsw9ozmFmT4lgWqX5GvE3nCw6baMVQq5xXLWUUQvXat
	VhNQ3Rj4YhVJLl7uXVRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lywIZ-00HLlg-79; Thu, 01 Jul 2021 13:00:07 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lywIW-00HLk7-Kv
 for linux-rockchip@lists.infradead.org; Thu, 01 Jul 2021 13:00:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1625144400;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1gyaxxwYOZpXLqVnHi4CE3c1kMcas4IfjUJUZzaROx0=;
 b=R5e6kah/pn7r8mlSHfs5nDnIGKO1wteMZMekDCUedheHpMB4hEzi/8lO09PmBddYTn+H5o
 6z/B2POeWIODZZ0A+rsLPKUj166cyDW1QLXtkRYp2FqaeJYdZkvqdvE+0RNguFCCLb6OLd
 8TpGusL66b1YXqnY6b3tSkV98ds9hYU=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-82-HiTlPAV-OmyRkQpHE7DGkw-1; Thu, 01 Jul 2021 08:59:59 -0400
X-MC-Unique: HiTlPAV-OmyRkQpHE7DGkw-1
Received: by mail-il1-f198.google.com with SMTP id
 j6-20020a926e060000b02901f2f7ba704aso373445ilc.20
 for <linux-rockchip@lists.infradead.org>; Thu, 01 Jul 2021 05:59:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=1gyaxxwYOZpXLqVnHi4CE3c1kMcas4IfjUJUZzaROx0=;
 b=risB6gqDy4MmvNyPLrIg/Bn76Mz47DeHGSCQQ7GUuUF+FwvHJtV1XA8XANiHz/3DgE
 H8FDKsyQg3sJsJPo10xEn4B5UCDNdt+9bE8svmu+fxhzm23xMyxy/ooHjOrTZ3tLHKOu
 Aad7c1BhtWZ6jBIfqyIcBhxrR9kNggDmQVLGWys+ieavQXnTRIcyeQo5T1JxGLx0XV4X
 m3P/upRsuC3zv4va191Le2F8zroIJemFnmPqjoEdl6P+O5UyOeC7TvG9aST03tkKS4R4
 ZNmEnG7OywRM9M+iJxDNWezJ/m9GZV/cJ4Q/KNGKwtBANKK38yRZSNkwwIZW2Hki3lE6
 3pQQ==
X-Gm-Message-State: AOAM533wfhPpm424m6eCgGruNqjcg0+vkcdregJOe80Ls7xGHEiRStED
 Zb2B5pPp2BV5HdsYvA1gC12Jg9D89ZSpEyPH7iVlYZFBzeLaMF3vgc7qMnZzR0e477LhyRTHj9t
 d2LM6O6CBLDzVInTQ0GgnIaY32ABqsRYk
X-Received: by 2002:a92:c792:: with SMTP id c18mr28985878ilk.75.1625144398941; 
 Thu, 01 Jul 2021 05:59:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy03Vs1QEKlhqi5D92WOpvsWXSFnIRm1XsAEbfOzRfJE2E8H075uOfvaEOx3PbqOEVv4PDRiQ==
X-Received: by 2002:a92:c792:: with SMTP id c18mr28985856ilk.75.1625144398676; 
 Thu, 01 Jul 2021 05:59:58 -0700 (PDT)
Received: from kasuf.ausil.us (207-179-239-100.mtco.com. [207.179.239.100])
 by smtp.gmail.com with ESMTPSA id l26sm13450699iok.26.2021.07.01.05.59.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Jul 2021 05:59:58 -0700 (PDT)
Message-ID: <f46b234e0aaf4356804d5e1446910bbedcbddb51.camel@redhat.com>
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: helios64: fixup USB setup
From: Dennis Gilmore <dgilmore@redhat.com>
To: Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>, 
 linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, open list
 <linux-kernel@vger.kernel.org>
Date: Thu, 01 Jul 2021 07:59:42 -0500
In-Reply-To: <01f1b032-14a8-a6fa-9063-23de65fc6f43@kleine-koenig.org>
References: <20210701004043.18585-1-dgilmore@redhat.com>
 <01f1b032-14a8-a6fa-9063-23de65fc6f43@kleine-koenig.org>
User-Agent: Evolution 3.40.2 (3.40.2-1.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=dgilmore@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210701_060004_797438_240B0CBE 
X-CRM114-Status: GOOD (  17.17  )
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

T24gVGh1LCAyMDIxLTA3LTAxIGF0IDExOjMxICswMjAwLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90
ZToKPiBIZWxsbywKPiAKPiBPbiA3LzEvMjEgMjo0MCBBTSwgRGVubmlzIEdpbG1vcmUgd3JvdGU6
Cj4gPiBXaXRob3V0IHRoZSB1c2JkcmRfZHdjM18xIG5vZGUgZGVmaW5lZCB1LWJvb3Qgd2lsbCB0
aHJvdyBhbiBlcnJvcgo+ID4gYW5kCj4gPiByZXNldCB0aGUgc3lzdGVtLgo+IAo+IEkgd29uZGVy
IGlmIHRoaXMgc2hvdWxkIGJldHRlciBiZSBmaXhlZCBpbiB1LWJvb3QgdGhlbj8hCj4gCj4gPiBB
bGwgb3RoZXIgcmszMzk5IHN5c3RlbXMgdXNlIHRoaXMgZm9ybWF0Cj4gCj4gVGhpcyBpcyB0cnVl
IGZvciB0aGUgZHdjIG5vZGVzLCBob3dldmVyIGZvciB0aGUgdXNiMiBub2RlcyB0aGVyZSBhcmUg
Cj4gc2V2ZXJhbCB0aGF0IHVzZSB0aGlzIGlkaW9tIChhbmQgZXZlbiByZXBlYXQgdGhlIGxhYmVs
IG5hbWUpLCBzZWUgZm9yCj4gZXhhbXBsZSB0aGUgJnUycGh5MCBub2RlIGluIAo+IGFyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpIC4KPiAKCmxvb2tpbmcg
YXQgdGhhdCBmaWxlIGlzIHdoZXJlIEkgZ290IHRoZSBpZGVhIHRvIHNldCBpdCB1cCBhcyBJIGhh
dmUKcHJvcG9zZWQsIGl0IGZvbGxvd3MgdGhlIGZvcm1hdCBJIGhhdmUgc3VibWl0dGVkCgpEZW5u
aXMKCj4gSW4gbXkgZXllcyBpdCdzIGEgYml0IHVnbHkgdG8gaGF2ZSB0aGUgdHdvIG5vZGVzIGFz
IHNlcGFyYXRlIGVudGl0aWVzCj4gYW5kIG9uIHRoZSBzYW1lIGluZGVudGF0aW9uIGxldmVsIGlu
IHRoZSBtYWNoaW5lIGR0cyBnaXZlbiB0aGF0IG9uZQo+IGlzIAo+IHRoZSBwYXJlbnQgb2YgdGhl
IG90aGVyIGFuZCBlbmFibGluZyBVU0IgbmVlZHMgYm90aCBzdGF0dXMgc2V0dGluZ3MuCj4gCj4g
QmVzdCByZWdhcmRzCj4gVXdlCj4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
