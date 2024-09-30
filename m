Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8FD2CE8359
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 15:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AjLM4SzQVG8IUCIpVWUWUWcBBHFY/4XsSxwE/u4OCJE=; b=Ufh9SHPrFNIJJ3
	9rBbofR/w1QKObPc8cNR5LfY3wIFIgDZSYyKzmJRWeWhBvS8d49RPGvOsxxr0u7hJYbVFYlEs+VDd
	xLlXB8tghqz7DjMlWqUX96AX42PXrepqwVnuKlk2WvUsBrS6ZOf4vzRr82vzcckHSkkpA/KRjoEpF
	jGxRicszs54CMcRPFHhb+LeB6nU5OMfuwHi7xg9PlietO8s+g7Z+JVfa5EAUfA/jZNi9/po5uTPvv
	QS880tvbhNZ9TdzypQtgX9pRaW56iD6zzXpaZR97q7vY2WD8UM0FaIN8Mopt4BiCiujpKyH0c5H52
	cq/9AcfkOiodpjhICPtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svIKt-000000003Eu-0XTx;
	Mon, 30 Sep 2024 15:29:19 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svIKq-000000003Dd-0cNk
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Sep 2024 15:29:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1727710124;
 bh=oySoeZXgklnZqRgl9rNvs2Vy1xJO0hdqK2BVTQwjHjk=;
 b=KDX/juuTwun4bp98WIV9bM+WjCrXK9QFl5f1ZlTIh2X6XLMnK6iT4JMctEu2gVIn5XOyXLYkC
 3Ar4MEr/20yYClvL7OibkbXfmnBxLFW9NtePnhY0ws4GQBd/5z4vUzDA688Q6HE/uTzs/cY+V8I
 d3f1F0qubs6zO7CROViw4nMd+00FZx8leHdN3qVHPMuQEXdFsosAsSCJMydaS5uORjr7zGKXKWF
 O+83HBps7FlUgPZA65OCcSdaEXvjsorv0Mn8t8LBCRPCG9qaxuMFzMBUn9ksT3MNysuqbbOYix/
 8APluXmWwHtUXiI01Yn7mirAjxELBDS4UUKPn8ILOYgw==
Message-ID: <3acf37cf-321e-4a03-a989-aff03fdec137@kwiboo.se>
Date: Mon, 30 Sep 2024 17:28:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/9] media: dt-bindings: rockchip,vdec: Add RK3288
 compatible
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alex Bee <knaerzche@gmail.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Christopher Obbard <chris.obbard@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20231105233630.3927502-1-jonas@kwiboo.se>
 <20231105233630.3927502-7-jonas@kwiboo.se> <3342168.44csPzL39Z@diego>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <3342168.44csPzL39Z@diego>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66fac3a9961bc87980ba467d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_082916_232373_A21DAA3E 
X-CRM114-Status: GOOD (  15.93  )
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

SGkgSGVpa28sCgpPbiAyMDI0LTA5LTMwIDE2OjQ2LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBI
aSBKb25hcywKPiAKPiBBbSBNb250YWcsIDYuIE5vdmVtYmVyIDIwMjMsIDAwOjM2OjEzIENFU1Qg
c2NocmllYiBKb25hcyBLYXJsbWFuOgo+PiBBZGQgYSBSSzMyODggY29tcGF0aWJsZSBmb3IgYSB2
ZXJzaW9uIG9mIHRoZSBSb2NrY2hpcCBWREVDIElQIHRoYXQgb25seQo+PiBzdXBwb3J0IEhFVkMg
ZGVjb2RpbmcuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJv
by5zZT4KPiAKPiBXaGlsZSBsb29raW5nIGZvciBzb21ldGhpbmcgZWxzZSBpbiBteSBpbmJveCwg
SSBzdHVtYmxlZCB1cG9uIHRoaXMgc2VyaWVzLgo+IExvb2tpbmcgYXQgNi4xMi1yYzEsIGl0IHNl
ZW1zIHRoZSByazMyODggcGFydHMgYXQgbGVhc3QgZGlkbid0IG1ha2UgaXQgaW4KPiB5ZXQsIHNv
IEkgZ3Vlc3MgSSBhIHJlYmFzZStyZXNlbmQgbWlnaHQgYmUgaW4gb3JkZXI/CgpZZXMsIHRoaXMg
bmVlZHMgdG8gYmUgdXBkYXRlZCBhbmQgcmVzZW50LCB0aGlzIHNlcmllcyBzaG91bGQgc3RpbGwg
YXBwbHkKY2xlYW4gb24gdG9wIG9mIHRoZSBkZXBlbmRlbnQgaDI2NCBoaWdoMTAgdjYgc2VyaWVz
IFsxXSwgaG93ZXZlciB0aGVyZQp3YXMgc29tZSBtaW5vciBmZWVkYmFjayB0byBhZGRyZXNzIGlu
IHRoaXMgc2VyaWVzLiBIb3BpbmcgdG8gc2VlIHNvbWUKcHJvZ3Jlc3Mgb24gdGhlIGgyNjQgaGln
aDEwIHY2IHNlcmllcyBhbmQgc2VuZCBhbiB1cGRhdGVkIHYyIG9mIHRoaXMKaGV2YyBzZXJpZXMg
aW4gbmVhciBmdXR1cmUuCgpBbHNvIHRyeWluZyB0byBmaW5pc2ggdXAgYSBGRm1wZWcgdjRsMnJl
cXVlc3QgaHdhY2NlbCB2MyBzZXJpZXMgYmVmb3JlIEkKdGFrZSBhIGNsb3NlciBsb29rIGF0IGEg
djIgb2YgdGhpcyBya3ZkZWMgaGV2YyBzZXJpZXMuCgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvbGludXgtbWVkaWEvMjAyNDA5MDkxOTI1MjIuMTA3NjcwNC0xLWpvbmFzQGt3aWJvby5zZS8K
ClJlZ2FyZHMsCkpvbmFzCgo+IAo+IAo+IEhlaWtvCj4gCj4+IC0tLQo+PiAgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlwLHZkZWMueWFtbCB8IDQgKysrLQo+
PiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tj
aGlwLHZkZWMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9y
b2NrY2hpcCx2ZGVjLnlhbWwKPj4gaW5kZXggMDhiMDJlYzE2NzU1Li4wZjAwZTljODY3MzcgMTAw
NjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9yb2Nr
Y2hpcCx2ZGVjLnlhbWwKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L21lZGlhL3JvY2tjaGlwLHZkZWMueWFtbAo+PiBAQCAtMTYsNyArMTYsOSBAQCBkZXNjcmlwdGlv
bjogfC0KPj4gIHByb3BlcnRpZXM6Cj4+ICAgIGNvbXBhdGlibGU6Cj4+ICAgICAgb25lT2Y6Cj4+
IC0gICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazMzOTktdmRlYwo+PiArICAgICAgLSBlbnVtOgo+
PiArICAgICAgICAgIC0gcm9ja2NoaXAscmszMjg4LXZkZWMKPj4gKyAgICAgICAgICAtIHJvY2tj
aGlwLHJrMzM5OS12ZGVjCj4+ICAgICAgICAtIGl0ZW1zOgo+PiAgICAgICAgICAgIC0gZW51bToK
Pj4gICAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazMyMjgtdmRlYwo+Pgo+IAo+IAo+IAo+IAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
