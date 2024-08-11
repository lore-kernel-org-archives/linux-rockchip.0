Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 575FDC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Aug 2024 08:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5m6iudUcIlRRNpi0SuMptcIKBWBjzQ0l5EKGZ+oejyU=; b=vHHh18NCrP47hJ
	GOjfz7IbuG6HJR6QO0UaGYshJ1lU94O+ukLpDVFjy786uXXuUE+P/SHljkCJ2b6u9zPn3gFOyO2gk
	avRN0s5yb2xahoRnssMoJF/vIaKexRzMoDzz+cw5JkyR7HP36WtYPapgcy23WL8Y/SBniNavnN4Mk
	ARdcJYkjEt/Zr8UHXiUdtWvkPzeX6tSO0b1W8nk8M87dUB9WOeG/GNg1sRPJtQgb9X4wxdztEg5Xy
	/NTglSGaEWDLXuyHyEVNnOSAVOZZZ2lr40BR4Y7lSLbcUb9zrbc3qWy1NHtu0pCTOX0yAhJL+Ax8o
	g21N1MlZScP9TUyXR9fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sd3fk-0000000FGuB-1mQc;
	Sun, 11 Aug 2024 08:11:28 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sd3f7-0000000FGp2-46wX;
	Sun, 11 Aug 2024 08:10:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AC08160DC7;
	Sun, 11 Aug 2024 08:10:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F856C4AF0C;
	Sun, 11 Aug 2024 08:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723363847;
	bh=nZFC08tDh3nttnNBJVhskJcR0F7oLOKEuY05u6lL1vI=;
	h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
	b=IayuqrgVtF03hxP3tVa0X2jMdwJIQiZvedasEzt4EiDzetg/YWqw+N3rHwOUgj1O7
	 glWVz2/gjDD8FiVKSJCHkDIkCJXTMZ6qDM/YbL/NWJ8z7JGsUd5OYXqHyPNNZFkGJj
	 gYB4t2FWWnQdSTtDD9lgpCezPjYX4TRLQ7x0dT96pPH22G2GD4nakyMQxWA98Imdey
	 IdUYWoNzWedlDi8tZWfK8QwP+Owg9tnWU9v3y3AoknpKEJ7h8fTipsA8OwSpEhCYlD
	 198BwYKta2npoYls9aUNOuSxuf5kzTa4BkaVBAOaASOOL9jTicowjyAceLcKdzcinD
	 Tj0bIFimIcfUg==
From: Kalle Valo <kvalo@kernel.org>
To: Arend van Spriel <arend.vanspriel@broadcom.com>
Cc: jacobe.zang@wesion.com,  Sai Krishna Gajula <saikrishnag@marvell.com>,
  "robh@kernel.org" <robh@kernel.org>,  "krzk+dt@kernel.org"
 <krzk+dt@kernel.org>,  "heiko@sntech.de" <heiko@sntech.de>,
  "davem@davemloft.net" <davem@davemloft.net>,  "edumazet@google.com"
 <edumazet@google.com>,  "kuba@kernel.org" <kuba@kernel.org>,
  "pabeni@redhat.com" <pabeni@redhat.com>,  "conor+dt@kernel.org"
 <conor+dt@kernel.org>,  "efectn@protonmail.com" <efectn@protonmail.com>,
  "dsimic@manjaro.org" <dsimic@manjaro.org>,  "jagan@edgeble.ai"
 <jagan@edgeble.ai>,  "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>,  "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
  "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>,  "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>,  "arend@broadcom.com"
 <arend@broadcom.com>,  "linux-wireless@vger.kernel.org"
 <linux-wireless@vger.kernel.org>,  "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>,  "megi@xff.cz" <megi@xff.cz>,
  "duoming@zju.edu.cn" <duoming@zju.edu.cn>,  "bhelgaas@google.com"
 <bhelgaas@google.com>,  "minipli@grsecurity.net" <minipli@grsecurity.net>,
  "brcm80211@lists.linux.dev" <brcm80211@lists.linux.dev>,
  "brcm80211-dev-list.pdl@broadcom.com"
 <brcm80211-dev-list.pdl@broadcom.com>,  "nick@khadas.com"
 <nick@khadas.com>
Subject: Re: [PATCH v9 4/5] wifi: brcmfmac: Add optional lpo clock enable
 support
References: <20240810035141.439024-1-jacobe.zang@wesion.com>
	<20240810035141.439024-5-jacobe.zang@wesion.com>
	<BY3PR18MB47072A9CC7E1EEB4BD1FC063A0BB2@BY3PR18MB4707.namprd18.prod.outlook.com>
	<d9a182e4-c620-476d-8eb2-752dfd1ba4f8@wesion.com>
	<fb9947fa-bca8-4c51-9feb-bf7ac6c6cc22@broadcom.com>
Date: Sun, 11 Aug 2024 11:10:39 +0300
In-Reply-To: <fb9947fa-bca8-4c51-9feb-bf7ac6c6cc22@broadcom.com> (Arend van
	Spriel's message of "Sat, 10 Aug 2024 20:32:42 +0200")
Message-ID: <8734nb32f4.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240811_011050_138246_2364BD08 
X-CRM114-Status: GOOD (  19.18  )
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

QXJlbmQgdmFuIFNwcmllbCA8YXJlbmQudmFuc3ByaWVsQGJyb2FkY29tLmNvbT4gd3JpdGVzOgoK
PiBPbiA4LzEwLzIwMjQgMTI6MDggUE0sIGphY29iZS56YW5nQHdlc2lvbi5jb20gd3JvdGU6Cj4K
Pj4gT24gMjAyNC84LzEwIDE3OjQ0LCBTYWkgS3Jpc2huYSBHYWp1bGEgPHNhaWtyaXNobmFnQG1h
cnZlbGwuY29tPgo+PiB3cm90ZToKPj4+Cj4+PiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
Cj4+PiA+IEZyb206IEphY29iZSBaYW5nIDxqYWNvYmUuemFuZ0B3ZXNpb24uY29tPgo+Pj4gPiBT
ZW50OiBTYXR1cmRheSwgQXVndXN0IDEwLCAyMDI0IDk6MjIgQU0KPj4+ID4gVG86IHJvYmhAa2Vy
bmVsLm9yZzsga3J6aytkdEBrZXJuZWwub3JnOyBoZWlrb0BzbnRlY2guZGU7Cj4+PiA+IGt2YWxv
QGtlcm5lbC5vcmc7IGRhdmVtQGRhdmVtbG9mdC5uZXQ7IGVkdW1hemV0QGdvb2dsZS5jb207Cj4+
PiA+IGt1YmFAa2VybmVsLm9yZzsgcGFiZW5pQHJlZGhhdC5jb207IGNvbm9yK2R0QGtlcm5lbC5v
cmc7Cj4+PiA+IGFyZW5kLnZhbnNwcmllbEBicm9hZGNvbS5jb20KPj4+ID4gQ2M6IGVmZWN0bkBw
cm90b25tYWlsLmNvbTsgZHNpbWljQG1hbmphcm8ub3JnOyBqYWdhbkBlZGdlYmxlLmFpOwo+Pj4g
PiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnOwo+Pj4gbGludXgtCj4+PiA+IHJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmc7
IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7Cj4+PiA+IGFyZW5kQGJyb2FkY29tLmNvbTsg
bGludXgtd2lyZWxlc3NAdmdlci5rZXJuZWwub3JnOwo+Pj4gPiBuZXRkZXZAdmdlci5rZXJuZWwu
b3JnOyBtZWdpQHhmZi5jejsgZHVvbWluZ0B6anUuZWR1LmNuOwo+Pj4gPiBiaGVsZ2Fhc0Bnb29n
bGUuY29tOyBtaW5pcGxpQGdyc2VjdXJpdHkubmV0OyBicmNtODAyMTFAbGlzdHMubGludXguZGV2
Owo+Pj4gPiBicmNtODAyMTEtZGV2LWxpc3QucGRsQGJyb2FkY29tLmNvbTsgbmlja0BraGFkYXMu
Y29tOyBKYWNvYmUgWmFuZwo+Pj4gPiA8amFjb2JlLnphbmdAd2VzaW9uLmNvbT4KPj4+ID4gU3Vi
amVjdDrCoCBbUEFUQ0ggdjkgNC81XSB3aWZpOiBicmNtZm1hYzogQWRkIG9wdGlvbmFsIGxwbyBj
bG9jawo+Pj4gPiBlbmFibGUgc3VwcG9ydAo+Pj4gPgo+Pj4gPiBXaUZpIG1vZHVsZXMgb2Z0ZW4g
cmVxdWlyZSAzMmtIeiBjbG9jayB0byBmdW5jdGlvbi4gQWRkIHN1cHBvcnQKPj4+IHRvIGVuYWJs
ZQo+Pj4gPiB0aGUgY2xvY2sgdG8gUENJZSBkcml2ZXIgYW5kIG1vdmUgImJyY20sYmNtNDMyOS1m
bWFjIiBjaGVjayB0bwo+Pj4gdGhlIHRvcCBvZgo+Pj4gPiBicmNtZl9vZl9wcm9iZS4gQ2hhbmdl
IGZ1bmN0aW9uIHByb3RvdHlwZXMgZnJvbSB2b2lkIHRvIGludCBhbmQgYWRkCj4+PiA+IGFwcHJv
cHJpYXRlIGVycm5vJ3MgZm9yIHJldHVybgo+Pj4gPiBXaUZpIG1vZHVsZXMgb2Z0ZW4gcmVxdWly
ZSAzMmtIeiBjbG9jayB0byBmdW5jdGlvbi4gQWRkIHN1cHBvcnQKPj4+IHRvIGVuYWJsZQo+Pj4g
PiB0aGUgY2xvY2sgdG8gUENJZSBkcml2ZXIgYW5kIG1vdmUgImJyY20sYmNtNDMyOS1mbWFjIiBj
aGVjayB0bwo+Pj4gdGhlIHRvcCBvZgo+Pj4gPiBicmNtZl9vZl9wcm9iZS4gQ2hhbmdlIGZ1bmN0
aW9uIHByb3RvdHlwZXMgZnJvbSB2b2lkIHRvIGludCBhbmQgYWRkCj4+PiA+IGFwcHJvcHJpYXRl
IGVycm5vJ3MgZm9yIHJldHVybiB2YWx1ZXMgdGhhdCB3aWxsIGJlIHNlbmQgdG8gYnVzCj4+PiB3
aGVuIGVycm9yCj4+PiA+IG9jY3VycmVkLgo+Pj4gPgo+Pj4gPiBDby1kZXZlbG9wZWQtYnk6IE9u
ZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+Pj4gPiBTaWduZWQtb2ZmLWJ5OiBPbmRyZWogSmly
bWFuIDxtZWdpQHhmZi5jej4KPj4+ID4gQ28tZGV2ZWxvcGVkLWJ5OiBBcmVuZCB2YW4gU3ByaWVs
IDxhcmVuZC52YW5zcHJpZWxAYnJvYWRjb20uY29tPgo+Pj4gPiBTaWduZWQtb2ZmLWJ5OiBBcmVu
ZCB2YW4gU3ByaWVsIDxhcmVuZC52YW5zcHJpZWxAYnJvYWRjb20uY29tPgo+Pj4gPiBTaWduZWQt
b2ZmLWJ5OiBKYWNvYmUgWmFuZyA8amFjb2JlLnphbmdAd2VzaW9uLmNvbT4KPj4+ID4gLS0tCj4+
PiA+wqDCoCAuLi4vYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL2JjbXNkaC5jwqDCoMKgwqDC
oCB8wqAgNCArLQo+Pj4gPsKgwqAgLi4uL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9jb21t
b24uY8KgwqDCoMKgwqAgfMKgIDMgKy0KPj4+ID7CoMKgIC4uLi93aXJlbGVzcy9icm9hZGNvbS9i
cmNtODAyMTEvYnJjbWZtYWMvb2YuYyB8IDUzCj4+PiArKysrKysrKysrKy0tLS0tLS0tCj4+PiA+
IC4uLi93aXJlbGVzcy9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvb2YuaCB8wqAgOSArKy0t
Cj4+PiA+wqDCoCAuLi4vYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL3BjaWUuY8KgwqDCoMKg
wqDCoMKgIHzCoCAzICsrCj4+PiA+wqDCoCAuLi4vYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFj
L3NkaW8uY8KgwqDCoMKgwqDCoMKgIHwgMjQgKysrKysrLS0tCj4+PiA+wqDCoCAuLi4vYnJvYWRj
b20vYnJjbTgwMjExL2JyY21mbWFjL3VzYi5jwqDCoMKgwqDCoMKgwqDCoCB8wqAgMyArKwo+Pj4g
PsKgwqAgNyBmaWxlcyBjaGFuZ2VkLCA2MyBpbnNlcnRpb25zKCspLCAzNiBkZWxldGlvbnMoLSkK
Pj4+ID4KPj4+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2Jy
Y204MDIxMS9icmNtZm1hYy9iY21zZGguYwo+Pj4gPiBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jy
b2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9iY21zZGguYwo+Pj4gPiBpbmRleCAxMzM5MWMyZDgy
YWFlLi5iMmVkZTRlNTc5YzVjIDEwMDY0NAo+Pj4gPiAtLS0gYS9kcml2ZXJzL25ldC93aXJlbGVz
cy9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvYmNtc2RoLmMKPj4+ID4gKysrIGIvZHJpdmVy
cy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL2JjbXNkaC5jCj4+PiA+
IEBAIC05NDcsOCArOTQ3LDggQEAgaW50IGJyY21mX3NkaW9kX3Byb2JlKHN0cnVjdCBicmNtZl9z
ZGlvX2Rldgo+Pj4gPiAqc2Rpb2RldikKPj4+ID4KPj4+ID7CoMKgwqDCoMKgwqAgLyogdHJ5IHRv
IGF0dGFjaCB0byB0aGUgdGFyZ2V0IGRldmljZSAqLwo+Pj4gPsKgwqDCoMKgwqDCoCBzZGlvZGV2
LT5idXMgPSBicmNtZl9zZGlvX3Byb2JlKHNkaW9kZXYpOwo+Pj4gPiAtwqDCoMKgIGlmICghc2Rp
b2Rldi0+YnVzKSB7Cj4+PiA+IC3CoMKgwqDCoMKgwqDCoCByZXQgPSAtRU5PREVWOwo+Pj4gPiAr
wqDCoMKgIGlmIChJU19FUlIoc2Rpb2Rldi0+YnVzKSkgewo+Pj4gPiArwqDCoMKgwqDCoMKgwqAg
cmV0ID0gUFRSX0VSUihzZGlvZGV2LT5idXMpOwo+Pj4gPsKgwqDCoMKgwqDCoMKgwqDCoMKgIGdv
dG8gb3V0Owo+Pj4gPsKgwqDCoMKgwqDCoCB9Cj4+PiA+wqDCoMKgwqDCoMKgIGJyY21mX3NkaW9k
X2hvc3RfZml4dXAoc2Rpb2Rldi0+ZnVuYzItPmNhcmQtPmhvc3QpOwo+Pj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL2NvbW1v
bi5jCj4+PiA+IGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21m
bWFjL2NvbW1vbi5jCj4+PiA+IGluZGV4IGIyNGZhYWUzNTg3M2QuLjU4ZDUwOTE4ZGQxNzcgMTAw
NjQ0Cj4+PiA+IC0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2JyY204MDIxMS9i
cmNtZm1hYy9jb21tb24uYwo+Pj4gPiArKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNv
bS9icmNtODAyMTEvYnJjbWZtYWMvY29tbW9uLmMKPj4+ID4gQEAgLTU2MSw3ICs1NjEsOCBAQCBz
dHJ1Y3QgYnJjbWZfbXBfZGV2aWNlCj4+PiA+ICpicmNtZl9nZXRfbW9kdWxlX3BhcmFtKHN0cnVj
dCBkZXZpY2UgKmRldiwKPj4+ID7CoMKgwqDCoMKgwqAgaWYgKCFmb3VuZCkgewo+Pj4gPsKgwqDC
oMKgwqDCoMKgwqDCoMKgIC8qIE5vIHBsYXRmb3JtIGRhdGEgZm9yIHRoaXMgZGV2aWNlLCB0cnkg
T0YgYW5kIERNSSBkYXRhICovCj4+PiA+wqDCoMKgwqDCoMKgwqDCoMKgwqAgYnJjbWZfZG1pX3By
b2JlKHNldHRpbmdzLCBjaGlwLCBjaGlwcmV2KTsKPj4+ID4gLcKgwqDCoMKgwqDCoMKgIGJyY21m
X29mX3Byb2JlKGRldiwgYnVzX3R5cGUsIHNldHRpbmdzKTsKPj4+ID4gK8KgwqDCoMKgwqDCoMKg
IGlmIChicmNtZl9vZl9wcm9iZShkZXYsIGJ1c190eXBlLCBzZXR0aW5ncykgPT0gLQo+Pj4gPiBF
UFJPQkVfREVGRVIpCj4+PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBFUlJfUFRS
KC1FUFJPQkVfREVGRVIpOwo+Pj4gPsKgwqDCoMKgwqDCoMKgwqDCoMKgIGJyY21mX2FjcGlfcHJv
YmUoZGV2LCBidXNfdHlwZSwgc2V0dGluZ3MpOwo+Pj4gPsKgwqDCoMKgwqDCoCB9Cj4+PiA+wqDC
oMKgwqDCoMKgIHJldHVybiBzZXR0aW5nczsKPj4+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L3dpcmVsZXNzL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9vZi5jCj4+PiA+IGIvZHJpdmVy
cy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL29mLmMKPj4+ID4gaW5k
ZXggZTQwNmUxMTQ4MWE2Mi4uZjE5ZGM3MzU1ZTBlOCAxMDA2NDQKPj4+ID4gLS0tIGEvZHJpdmVy
cy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL29mLmMKPj4+ID4gKysr
IGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL29mLmMK
Pj4+ID4gQEAgLTYsNiArNiw3IEBACj4+PiA+wqDCoCAjaW5jbHVkZSA8bGludXgvb2YuaD4KPj4+
ID7CoMKgICNpbmNsdWRlIDxsaW51eC9vZl9pcnEuaD4KPj4+ID7CoMKgICNpbmNsdWRlIDxsaW51
eC9vZl9uZXQuaD4KPj4+ID4gKyNpbmNsdWRlIDxsaW51eC9jbGsuaD4KPj4+ID4KPj4+ID7CoMKg
ICNpbmNsdWRlIDxkZWZzLmg+Cj4+PiA+wqDCoCAjaW5jbHVkZSAiZGVidWcuaCIKPj4+ID4gQEAg
LTY1LDE3ICs2NiwyMSBAQCBzdGF0aWMgaW50IGJyY21mX29mX2dldF9jb3VudHJ5X2NvZGVzKHN0
cnVjdCBkZXZpY2UKPj4+ID4gKmRldiwKPj4+ID7CoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+PiA+
wqDCoCB9Cj4+PiA+Cj4+PiA+IC12b2lkIGJyY21mX29mX3Byb2JlKHN0cnVjdCBkZXZpY2UgKmRl
diwgZW51bSBicmNtZl9idXNfdHlwZSBidXNfdHlwZSwKPj4+ID4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgc3RydWN0IGJyY21mX21wX2RldmljZSAqc2V0dGluZ3MpCj4+PiA+ICtpbnQgYnJjbWZf
b2ZfcHJvYmUoc3RydWN0IGRldmljZSAqZGV2LCBlbnVtIGJyY21mX2J1c190eXBlIGJ1c190eXBl
LAo+Pj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGJyY21mX21wX2RldmljZSAqc2V0
dGluZ3MpCj4+PiA+wqDCoCB7Cj4+PiA+wqDCoMKgwqDCoMKgIHN0cnVjdCBicmNtZm1hY19zZGlv
X3BkICpzZGlvID0gJnNldHRpbmdzLT5idXMuc2RpbzsKPj4+ID7CoMKgwqDCoMKgwqAgc3RydWN0
IGRldmljZV9ub2RlICpyb290LCAqbnAgPSBkZXYtPm9mX25vZGU7Cj4+PiA+ICvCoMKgwqAgc3Ry
dWN0IGNsayAqY2xrOwo+Pj4gPsKgwqDCoMKgwqDCoCBjb25zdCBjaGFyICpwcm9wOwo+Pj4KPj4+
IFNtYWxsIG5pdCwgcGxlYXNlIGNoZWNrIGlmIHJldmVyc2UgeC1tYXMgdHJlZSBvcmRlciBuZWVk
IHRvIGJlCj4+PiBmb2xsb3cgaGVyZS4KPj4+Cj4+PiA+wqDCoMKgwqDCoMKgIGludCBpcnE7Cj4+
PiA+wqDCoMKgwqDCoMKgIGludCBlcnI7Cj4+PiA+wqDCoMKgwqDCoMKgIHUzMiBpcnFmOwo+PiBJ
dCBjYW4gYmUgc2VlbiBmcm9tIHRoaXMgbGluZSB0aGF0IHRoZXJlIHNob3VsZCBiZSBubyBuZWVk
IHRvIGZvbGxvdwo+PiB0aGUgcmV2ZXJzZSB4LW1hcyB0cmVlIG9yZGVyLiBCZWNhdXNlIGl0IGlz
IGEgc3RydWN0IHZhcmlhYmxlLCBzbwo+PiBwbGFjZSB3aXRoIG90aGVyIHN0cnVjdCBvbmVzLgo+
Cj4gQXMgZHJpdmVyIG1haW50YWluZXIgSSBkbyBub3QgY2FyZSBhYm91dCBzdWNoIG5lYXRuZXNz
LCBidXQgbWF5YmUKPiBLYWxsZSBoYXMgYW5vdGhlciBwcmVmZXJlbmNlLiBUaGUgY29kZSBhYm92
ZSBsb29rcyBmaW5lIHRvIG1lLgoKV2UgaGF2ZW4ndCBiZWVuIHN0cm9uZ2x5IHJlcXVpcmluZyBy
ZXZlcnNlIHgtbWFzIHRyZWUgaW4gd2lyZWxlc3MgY29kZSwKaXQgaGFzIGJlZW4ganVzdCBhIHBy
ZWZlcmVuY2UuIEFsc28gZm9yIG1lIHRoZSBjb2RlIGFib3ZlIGxvb2tzIGZpbmUuCgotLSAKaHR0
cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXdpcmVsZXNzL2xpc3QvCgpo
dHRwczovL3dpcmVsZXNzLndpa2kua2VybmVsLm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50YXRp
b24vc3VibWl0dGluZ3BhdGNoZXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
