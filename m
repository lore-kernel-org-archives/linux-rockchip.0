Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1ADFBCAC5BB
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Oct 2025 14:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=djrPgeUnFdrNJGZ59K3KJrXW0N9niTiTmThhYSDn/Z0=; b=owOWqNOpcLbUEc
	QjbwbIB2qWhVofa6svB28kpTY2WbcdNbysEmSnEkSADyZI4RnjOjuGGQPhgSy2CrNCRKSS46h8xXX
	qDsmkPQ1lz8TIC4cgqMa8nfNyUgV0kJ+m8dM3OrvYSTOxrWBHjb1htNk24x9ccbt/ah0THvi3uWQp
	AceX6YEs/gvrmXP060mXCN5TLKoIM1EtgQBs3DA1cWAgDpK44RhS3Iy7BV5tvGM7crilCKtupmal9
	R/Pa6S6Fv2XyvfSc1bzc8+3phpO24klZRbfvJjTPHu4IKax7v7WbD+pAaOX5pGeLDYexTscotKImH
	LMHVDri7XOPI7dq4HUKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v53T6-0000000DnU6-2zzE;
	Sat, 04 Oct 2025 14:42:40 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v53T3-0000000DnTj-2ssM
	for linux-rockchip@lists.infradead.org;
	Sat, 04 Oct 2025 14:42:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1759588954;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CyNXhoET8XBzKUh2zjz0wNQO0kAUQdnWpZGZ78YY6qY=;
	b=DcKyi4/DPmWMXlHnfW7ss+M+EMPJNcjglLy6BCStAiEy+0YUu/Mw808kIwRv84gupx896e
	2Jt6LBlAC7WTwiQIYxKa+xC3M4yGMq7KeJsfWP9Ue+h7nvg2AIjO1sEkS9gKh9ldQTePQ6
	spq/8vNiySW2PeohP4dTPoMX78UteTw=
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com
 [209.85.222.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-447-3TSNEcLfO3uUQc68hq5_gw-1; Sat, 04 Oct 2025 10:42:32 -0400
X-MC-Unique: 3TSNEcLfO3uUQc68hq5_gw-1
X-Mimecast-MFC-AGG-ID: 3TSNEcLfO3uUQc68hq5_gw_1759588952
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-90bceb0908eso4360604241.0
        for <linux-rockchip@lists.infradead.org>; Sat, 04 Oct 2025 07:42:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759588952; x=1760193752;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CyNXhoET8XBzKUh2zjz0wNQO0kAUQdnWpZGZ78YY6qY=;
        b=XmElgXIj31oGHLB+Vs2qCdVlReZQqRIh6pjHEVWugQnc7GIHFqFyusDYZC/Ok1EeOK
         xIj50BDIyT2RhW6kpIQH7SRUaNyFgc5WgR84Gzc9R77317vehfW2WeNwlrhcoEvuGN5h
         hDWBtDLFPfaHLxxS8YsQcm4rZ/sNEAck0IJgPkHynLhAK4dxMl+PkqiJkJU5rHxtEj5M
         bDXu0n5n9TPDSLbVe1hqWLlH7fb/NW5/wHuavzZxvKyxk8bDbHDz5dXsU+3BuHY6akE1
         4YURfR1L4lA0rDp0EIPKOmhiLYLZCAP6MWb6iUGp3EaepWhae82yrqUQXJTSGN+cSRt4
         NULg==
X-Forwarded-Encrypted: i=1; AJvYcCW4sKBFzBuDh1GPg6kL18nbZyWJCxZsUnGuHT70uV2gcq0eZybp4NN9rZ2jOmKTmhqx5SRzFPGRLKru2B7qpA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwnUULCrBWOtjsrpC99zWofSR55IQnsfbQGd2H/Xl27434iMNhk
	d52nwxdSaZ9xWt/vYlAR6nlOBhyqULHDSpKZ3Tgf8yDnDKoBnyjySH/CQ2zm1F6qfG1JVh9gh7m
	pogQivyY2aht5+V14JV5tZ780hJfrHMazo04OWDkGVBKCZZMIxx/+CLgcTAZtQvWiYzcvAKjIzA
	k5F/TQfRlpqi+onXBxcMaWp7A99CrixWMOlo5gzt3MgotVVt0W
X-Gm-Gg: ASbGncvm4DApvGL5jKchBMsu4R8wcY/rB7aAfK6u4XDbkc5JcKuwzJNjZFZs9LaTT04
	JCC4htWdZA5M/Lcti5C0GXxcjJeytFyfmVZvkMhGFp7n1tMPFbBEC7P3LEfxcmPN8aN4USa+sR8
	0Huk5uZxDMOMRThGYjH+KLoG9V/Ks=
X-Received: by 2002:a05:6102:14a8:b0:52a:1104:3029 with SMTP id ada2fe7eead31-5d41c17fc59mr3321320137.17.1759588951988;
        Sat, 04 Oct 2025 07:42:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE674zB73YsI/pAPw0bIwRieKGfGydQY5l1hK3XQdGD80Jtss5WI0eIO6jsU5dAUs3XNCmSrqmU+56s4D9SKSQ=
X-Received: by 2002:a05:6102:14a8:b0:52a:1104:3029 with SMTP id
 ada2fe7eead31-5d41c17fc59mr3321306137.17.1759588951602; Sat, 04 Oct 2025
 07:42:31 -0700 (PDT)
MIME-Version: 1.0
References: <20250830021825.2859325-1-ming.lei@redhat.com> <20250830021825.2859325-6-ming.lei@redhat.com>
 <pnezafputodmqlpumwfbn644ohjybouveehcjhz2hmhtcf2rka@sdhoiivync4y>
In-Reply-To: <pnezafputodmqlpumwfbn644ohjybouveehcjhz2hmhtcf2rka@sdhoiivync4y>
From: Ming Lei <ming.lei@redhat.com>
Date: Sat, 4 Oct 2025 22:42:20 +0800
X-Gm-Features: AS18NWDHJgRWziKexb0Mjrgc7I5f0NwDaDeOyWw9X3169ZFewY53f1xPhcN8YcQ
Message-ID: <CAFj5m9Ki1U6N4N6-=HYy49KfvYAbegmwcXLuKCxjX4E+qy7u7Q@mail.gmail.com>
Subject: Re: [PATCH V2 5/5] blk-mq: Replace tags->lock with SRCU for tag
 iterators - Rockchip UFS regression
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org, 
	Hannes Reinecke <hare@suse.de>, Yu Kuai <yukuai3@huawei.com>, kernel@collabora.com, 
	linux-rockchip@lists.infradead.org
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: InO1wh6tZxySyFn5dZwkHklTAupMWl_st6OYEMJTD28_1759588952
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251004_074237_804627_24D1EF53 
X-CRM114-Status: GOOD (  19.28  )
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

T24gU2F0LCBPY3QgNCwgMjAyNSBhdCAxOjE44oCvQU0gU2ViYXN0aWFuIFJlaWNoZWwKPHNlYmFz
dGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gSGksCj4KPiBPbiBTYXQsIEF1
ZyAzMCwgMjAyNSBhdCAxMDoxODoyM0FNICswODAwLCBNaW5nIExlaSB3cm90ZToKPiA+IFJlcGxh
Y2UgdGhlIHNwaW5sb2NrIGluIGJsa19tcV9maW5kX2FuZF9nZXRfcmVxKCkgd2l0aCBhbiBTUkNV
IHJlYWQgbG9jawo+ID4gYXJvdW5kIHRoZSB0YWcgaXRlcmF0b3JzLgo+ID4KPiA+IFRoaXMgaXMg
ZG9uZSBieToKPiA+Cj4gPiAtIEhvbGRpbmcgdGhlIFNSQ1UgcmVhZCBsb2NrIGluIGJsa19tcV9x
dWV1ZV90YWdfYnVzeV9pdGVyKCksCj4gPiBibGtfbXFfdGFnc2V0X2J1c3lfaXRlcigpLCBhbmQg
YmxrX21xX2hjdHhfaGFzX3JlcXVlc3RzKCkuCj4gPgo+ID4gLSBSZW1vdmluZyB0aGUgbm93LXJl
ZHVuZGFudCB0YWdzLT5sb2NrIGZyb20gYmxrX21xX2ZpbmRfYW5kX2dldF9yZXEoKS4KPiA+Cj4g
PiBUaGlzIGNoYW5nZSBmaXhlcyBsb2NrdXAgaXNzdWUgaW4gc2NzaV9ob3N0X2J1c3koKSBpbiBj
YXNlIG9mIHNob3N0LT5ob3N0X2Jsb2NrZWQuCj4gPgo+ID4gQWxzbyBhdm9pZHMgYmlnIHRhZ3Mt
PmxvY2sgd2hlbiByZWFkaW5nIGRpc2sgc3lzZnMgYXR0cmlidXRlIGBpbmZsaWdodGAuCj4gPgo+
ID4gUmV2aWV3ZWQtYnk6IEhhbm5lcyBSZWluZWNrZSA8aGFyZUBzdXNlLmRlPgo+ID4gU2lnbmVk
LW9mZi1ieTogTWluZyBMZWkgPG1pbmcubGVpQHJlZGhhdC5jb20+Cj4gPiAtLS0KPgo+IFRoaXMg
cGF0Y2ggbGFuZGVkIGluIHRoZSBsYXN0IGZldyBob3VycyBhbmQgSSBub3cgc2VlIHRoZSBmb2xs
b3dpbmcKPiBmYXRhbCBlcnJvciBvbiB0aGUgUmFkeGEgUk9DSyA0RCAobW9zdCBsaWtlbHkgUm9j
a2NoaXAgVUZTIGluCj4gZ2VuZXJhbCkuIEFmdGVyIHJldmVydGluZyB0aGlzIHBhdGNoIHRoZSBl
cnJvciBpcyBnb25lIGFuZCB0aGluZ3MKPiBhcmUgd29ya2luZyBhcyBleHBlY3RlZDoKPgo+IFsg
ICAgMi43MTMyMDRdIENQVTogNyBVSUQ6IDAgUElEOiAxIENvbW06IHN3YXBwZXIvMCBOb3QgdGFp
bnRlZCA2LjE3LjAtZzQ3MmVhMTk1Y2RmMyAjMSBQUkVFTVBUCj4gWyAgICAyLjcxMzk1Nl0gSGFy
ZHdhcmUgbmFtZTogUmFkeGEgUk9DSyA0RCAoRFQpCj4gWyAgICAyLjcxNDM0Ml0gcHN0YXRlOiA2
MDAwMDAwNSAoblpDdiBkYWlmIC1QQU4gLVVBTyAtVENPIC1ESVQgLVNTQlMgQlRZUEU9LS0pCj4g
WyAgICAyLjcxNDk1NV0gcGMgOiBfX3NyY3VfcmVhZF9sb2NrKzB4MzAvMHg4MAoKICBUaGUgcHJv
YmxlbTogc2NzaV9ob3N0X2J1c3koKSB0cmllcyB0byB1c2UgdGFnc19zcmN1IGJlZm9yZSBpdCdz
CmluaXRpYWxpemVkIGJ5IGluaXRfc3JjdV9zdHJ1Y3QoKS4KCiAgVGhlIHdhcm5pbmcgYXQgX19z
cmN1X3JlYWRfbG9jaysweDMwLzB4ODAgaW5kaWNhdGVzIHRoYXQgdGhlIFNSQ1UKc3RydWN0dXJl
ICh0YWdzX3NyY3UpIGhhcyBub3QgYmVlbiBwcm9wZXJseSBpbml0aWFsaXplZCB5ZXQuIFRoZSBj
b2RlCiAgIGF0IGxpbmUgNzU0IGluIHNyY3V0cmVlLmMgdHJpZXMgdG8gcmVhZCBzc3AtPnNyY3Vf
Y3RycCwgYnV0IHRoaXMKcG9pbnRlciBpcyBsaWtlbHkgTlVMTCBvciBjb250YWlucyBnYXJiYWdl
IGJlY2F1c2UgaW5pdF9zcmN1X3N0cnVjdCgpCiAgIGhhc24ndCBiZWVuIGNhbGxlZCB5ZXQuCgog
IFNvbHV0aW9uCgogIFRoZSBzY3NpX2hvc3RfYnVzeSgpIGNhbGwgc2hvdWxkIG9ubHkgaGFwcGVu
IGFmdGVyIHRoZSBTQ1NJIGhvc3QgaGFzCmJlZW4gYWRkZWQgYW5kIHRoZSB0YWdfc2V0IGhhcyBi
ZWVuIGluaXRpYWxpemVkLiBUaGUgZml4IHdvdWxkIGJlCiAgdG8gY2hlY2sgaWYgdGhlIHRhZ19z
ZXQgaXMgaW5pdGlhbGl6ZWQgYmVmb3JlIGNhbGxpbmcKc2NzaV9ob3N0X2J1c3koKSwgb3IgdG8g
ZGVmZXIgdGhlIHByaW50aW5nIG9mIGhvc3Qgc3RhdGUgdW50aWwgYWZ0ZXIKdGhlIGhvc3QgaXMK
ICBmdWxseSBpbml0aWFsaXplZC4KCiAgT25lIHBvc3NpYmxlIGZpeCBpcyB0byBjaGVjayBoYmEt
PnNjc2lfaG9zdF9hZGRlZCBiZWZvcmUgY2FsbGluZwpzY3NpX2hvc3RfYnVzeSgpOgoKICBkZXZf
ZXJyKGhiYS0+ZGV2LCAiJWQgb3V0c3RhbmRpbmcgcmVxcywgdGFza3M9MHglbHhcbiIsCiAgICAg
IGhiYS0+c2NzaV9ob3N0X2FkZGVkID8gc2NzaV9ob3N0X2J1c3koaGJhLT5ob3N0KSA6IDAsCiAg
ICAgIGhiYS0+b3V0c3RhbmRpbmdfdGFza3MpOwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
