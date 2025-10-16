Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78F0ACCD185
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Oct 2025 01:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mbdE0skFn/vCP4AtUHxERcKDjpYMfPCZIVdBNr5tg4g=; b=5Bm3KtLYhJwVN9
	3+l7NE2rRZmmcEmeafUfi592928rJG43AH+y7DhJAlR0Pux7tR6DWfDp8EWmFBfTLj8bBY2BU1L7u
	hzHYBpWvHN3XgdptW5Mkwro3R3V8uMSiJyeWMcwMihz+8Rd+8GHMmx5mX1Ia54RNg0uV4qSCHoGH/
	56cu3vTMyPh7rYgMYYzWO6rjiq1qNhtbPgpJrdAoCe8jxhSZ7gKaKR3npJr00RM9GKqnPIhL8k6Qr
	iK5ToiPyAJ4xJMIGFlpRtDWloRZdOSugRhzMeYqKgcInjpdBFQri1Sm/1cIiODpeiFJgvzUmBTzWJ
	eZGtCXoVlbouIoH9XoPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9D8s-00000003EZ0-38Zv;
	Thu, 16 Oct 2025 01:50:58 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9D8p-00000003EXf-2C2s
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Oct 2025 01:50:57 +0000
X-QQ-mid: zesmtpip3t1760579391tb10b6e15
X-QQ-Originating-IP: yqCawthjtTuw90dLvCzQouxE5b7tCEkQY6aMY/TtTzg=
Received: from [IPV6:240f:10b:7440:1:8198:2f89 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 16 Oct 2025 09:49:45 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7959665287398781306
Message-ID: <AE0735A6C797CCFF+10496d73-7c0a-4884-9561-24721305a24f@radxa.com>
Date: Thu, 16 Oct 2025 10:49:44 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/3] Add Radxa CM5 module and IO board dts
To: Joseph Kogut <joseph.kogut@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jimmy Hon <honyuenkwun@gmail.com>, Steve deRosier <derosier@cal-sierra.com>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250617-rk3588s-cm5-io-dts-upstream-v5-0-8d96854a5bbd@gmail.com>
 <57969F385B5AF318+653dac83-8227-4987-84c6-f3e08b10085c@radxa.com>
 <CAMWSM7iHtAxewW4JkRqRsifVnccqeFviaCgeOyprKDr92FOurg@mail.gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <CAMWSM7iHtAxewW4JkRqRsifVnccqeFviaCgeOyprKDr92FOurg@mail.gmail.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OSjQccS6YHkH6Tny5937SKGZBr7mu+FWh9K9Eiz1QB4Hvs0VpyoaKNbY
	+dT8pkCV/D8MG5OYlqM2QGgEdoMIber7EoW/py52twUw8QyFA60LUB8jYBseSAc+b9IRTr0
	N5jXbdkUcHdHArB6d3jqCNhyZnMRTUB4XNeihlvHxE3/hWhhXHeDCJLw8DOMSfmd6AeNLXP
	rXUhKcIXAGQwFJyZZHChVoKneys56+PI7uz/iuGQspwyovesDxWV3jx4FEwqJYRrq+1VSGN
	DjGPYl1UYdUU8eFakUHVO/gq0rfHfysE/juSndQyOk8eYL0R/ctdnfp/TRWdbWFmqeQ6PN3
	2gdsbHwKpHHYAxWKuE/c6CcEFT2BBT6mSNOiQ2ENp2+CugfTpuyEFn/ZvEZ49mML+R1W4Tn
	i4IT52btMfCt6cT5f+t8FZWTPXcI8ayscN5n05kyLmIiSoIOTErK5nYAUAk7V3jCMrT3Bi0
	0DNG/3lKZP/sMc5b/vct+YtayfWLik75QCa4YL7kS2x+TJ8OtUJdaacwBPNLckAEZjXl8fQ
	4/iI0qOAAMOBsML44K4ISXqZE8Sa6opzFr8cQHKAh9WDjab3vT5CwRReqfvroAH1CFZWhb0
	KYl2ZU9t49G4HWPaSc8RqFKU4O/0Aunrj4N59MpxaPS4jS+t+iHVxR1Y9q0yRXejkWnS/hm
	BIOQQoOH6UPJuVBEFSu6wiitYPRDM77pOB3htzRcV6Nn4IfmGakJBb5ejLBi7eG/Pmp/Ra2
	VYhr2iB/PM2WMlOp9N0a0e9GNqNdHcVsmrKZnVBObQYbQZ/OqV85o0depY1yNl99sBEaVRA
	vxWgBWtVaytUibTk6c4c4Y9wjRIWEOzX+STf6LcpBBK1tB+8xjNN60hho9I5wTr5F2257YI
	kQuhTDz9ChXjRc0fpvNIFIW7XtadBpcqcXl5HqswUQsMgUd+O1g9oElzzOQWDYq1w8XdeOs
	h0LIWl0aTO31pedj7FeTrqz87jWzFU6gsnoAcsIbAkDyMNny2dXn7OP0vddv7NwwUULoy0+
	R3raLdzarDrzzmaEtXkJ236jMF7J5ZszA9eb1Vhw==
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_185056_060622_1C50F33A 
X-CRM114-Status: GOOD (  19.07  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSm9zZXBoLAoKT24gMTAvMTYvMjUgMDg6MzksIEpvc2VwaCBLb2d1dCB3cm90ZToKPiBIZWxs
byBOYW9raSwKPiAKPiAKPiBPbiBXZWQsIFNlcCAzLCAyMDI1IGF0IDE6MjjigK9BTSBGVUtBVU1J
IE5hb2tpIDxuYW9raUByYWR4YS5jb20+IHdyb3RlOgo+Pgo+PiBIaSBKb3NlcGgsCj4+Cj4+IEkn
bSB0aGlua2luZyBvZiBjb250aW51aW5nIHlvdXIgd29yaywgc28gaWYgeW91J3ZlIGFscmVhZHkg
ZG9uZQo+PiBzb21ldGhpbmcsIHBsZWFzZSBsZXQgbWUga25vdy4KPj4KPiAKPiBJJ3ZlIG5vdCBm
b2xsb3dlZCB1cCBvbiB0aGlzIHNlcmllcyB5ZXQsIGJ1dCBJJ20gcGxhbm5pbmcgb24gcGlja2lu
Zwo+IGl0IGJhY2sgdXAgdGhpcyB3ZWVrLiBJJ20gaGFwcHkgdG8gY29sbGFib3JhdGUgd2l0aCB5
b3UsIGRvIGxldCBtZQo+IGtub3cgaWYgeW91J3ZlIG1hZGUgYW55IHByb2dyZXNzIG9yIGltcHJv
dmVtZW50cywgYW5kIHRoYW5rIHlvdSBmb3IKPiB5b3VyIHJldmlldyBlYXJsaWVyLgoKSSd2ZSBh
bHJlYWR5IGFsbW9zdCBmaW5pc2hlZCB0aGUgd29yay4gVW5mb3J0dW5hdGVseSwgYSBwcm9ibGVt
KCoxKSAKY2F1c2VkIHRoZSB3b3JrIHRvIHN0b3AgZm9yIGEgZmV3IHdlZWtzLCBidXQgdGhlIHBy
b2JsZW0gaGFzIGJlZW4gCnJlc29sdmVkKCoyKSwgc28gSSBjYW4gY29udGludWUgd29ya2luZy4g
SSdsbCBwb3N0IGEgcGF0Y2ggc29vbiBvbmNlIApzb21lIG1pbm9yIHR3ZWFraW5nIGFuZCB0ZXN0
aW5nIGlzIGNvbXBsZXRlLgoKQnkgdGhlIHdheSwgYXQgc29tZSBwb2ludCBJIHN3aXRjaGVkIGZy
b20gImNvbnRpbnVpbmcgeW91ciB3b3JrIiB0byAKInJlY3JlYXRpbmcgYSBuZXcgb25lIGJhc2Vk
IG9uIG15IGN1cnJlbnQgd29yay4iIFRoZSByZXN1bHRzIG9mIG15IApjdXJyZW50IHdvcmsoKjMp
IGhhdmUgY2hhbmdlZCBzaWduaWZpY2FudGx5LgoKKjEgCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5l
bC5vcmcvcHJvamVjdC9saW51eC1wY2kvcGF0Y2gvMjAyNTA5MjItcGNpLWR0LWFzcG0tdjItMS0y
YTY1Y2Y4NGUzMjZAb3NzLnF1YWxjb21tLmNvbS8jMjY2MDM0OTkKKjIgCmh0dHBzOi8vcGF0Y2h3
b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1yb2NrY2hpcC9wYXRjaC8yMDI1MTAxNTEyMzE0
Mi4zOTIyNzQtMi1jYXNzZWxAa2VybmVsLm9yZy8KKjMgaHR0cHM6Ly9naXRodWIuY29tL1JhZHhh
TmFva2kvdS1ib290L2NvbW1pdHMvcmFkeGEtY201LWlvLwoKQmVzdCByZWdhcmRzLAoKLS0KRlVL
QVVNSSBOYW9raQpSYWR4YSBDb21wdXRlciAoU2hlbnpoZW4pIENvLiwgTHRkLgoKPiBCZXN0LAo+
IEpvc2VwaAo+IAo+PiBCZXN0IHJlZ2FyZHMsCj4+Cj4+IC0tCj4+IEZVS0FVTUkgTmFva2kKPj4g
UmFkeGEgQ29tcHV0ZXIgKFNoZW56aGVuKSBDby4sIEx0ZC4KPj4KPj4gT24gNi8xOC8yNSAwNzox
MSwgSm9zZXBoIEtvZ3V0IHdyb3RlOgo+Pj4gVGhpcyBwYXRjaCBzZXJpZXMgYWRkcyBpbml0aWFs
IGRldmljZSB0cmVlIHN1cHBvcnQgZm9yIHRoZSBSYWR4YSBDTTUgU29NCj4+PiBhbmQgYWNjb21w
YW55aW5nIElPIGJvYXJkLgo+Pj4KPj4+IFY0IC0+IFY1Ogo+Pj4gICAgIFBhdGNoICgyLzMpLCBw
ZXIgSmltbXk6Cj4+PiAgICAgLSBBbGlhcyBlTU1DIHRvIG1tYzAKPj4+ICAgICAtIFJlbW92ZSB1
bnVzZWQgc2RpbyBhbGlhcwo+Pj4gICAgIC0gTW92ZSBnbWFjLCBoZG1pMCBub2RlcyB0byBjYXJy
aWVyIGJvYXJkIGR0cwo+Pj4KPj4+ICAgICBQYXRjaCAoMy8zKSwgcGVyIEppbW15Ogo+Pj4gICAg
IC0gRW5hYmxlIGhkbWkwX3NvdW5kIGFuZCBpMnM1XzhjaAo+Pj4gICAgIC0gUmVtb3ZlIHJlZHVu
ZGFudCBlbmFibGVtZW50IG9mIHNkaGNpCj4+PiAgICAgLSBFbmFibGUgdXNiX2hvc3QyX3hoY2kK
Pj4+Cj4+PiAgICAgLSBUZXN0ZWQgSERNSSBhdWRpbwo+Pj4KPj4+IFYzIC0+IFY0Ogo+Pj4gICAg
IC0gRml4ZWQgWEhDSSBpbml0aWFsaXphdGlvbiBidWcgYnkgY2hhbmdpbmcgdHJ5LXBvd2VyLXJv
bGUgZnJvbSBzb3VyY2UKPj4+ICAgICAgIHRvIHNpbmsKPj4+Cj4+PiBWMiAtPiBWMzoKPj4+ICAg
ICAtIEFkZHJlc3NlZCBZQU1MIHN5bnRheCBlcnJvciBpbiBkdCBiaW5kaW5nIChwZXIgUm9iKQo+
Pj4gICAgIC0gRml4ZWQgd2hpdGVzcGFjZSBpc3N1ZSBpbiBkdHMgcmVwb3J0ZWQgYnkgY2hlY2tw
YXRjaC5wbAo+Pj4gICAgIC0gU3BsaXQgYmFzZSBTb00gYW5kIGNhcnJpZXIgYm9hcmQgaW50byBz
ZXBhcmF0ZSBwYXRjaGVzCj4+PiAgICAgLSBBZGRlZCBmdXJ0aGVyIGRldGFpbHMgYWJvdXQgdGhl
IFNvTSBhbmQgY2FycmllciB0byB0aGUgY29tbWl0Cj4+PiAgICAgICBtZXNzYWdlcwo+Pj4KPj4+
IFYxIC0+IFYyOgo+Pj4gICAgIC0gQWRkZWQgY29weXJpZ2h0IGhlYWRlciBhbmQgZGF0YSBzaGVl
dCBsaW5rcwo+Pj4gICAgIC0gUmVtb3ZlZCBub24tZXhpc3RlbnQgcHJvcGVydHkKPj4+ICAgICAt
IFNvcnRlZCBhbHBoYWJldGljYWxseQo+Pj4gICAgIC0gUmVtb3ZlZCBlcnJhbnQgd2hpdGVzcGFj
ZQo+Pj4gICAgIC0gTW92ZWQgc3RhdHVzIHRvIHRoZSBlbmQgb2YgZWFjaCBub2RlCj4+PiAgICAg
LSBSZW1vdmVkIHBpbmN0cmwtbmFtZXMgcHJvcGVydHkgZnJvbSBsZWRzIChpbmRpY2F0ZWQgYnkg
Q0hFQ0tfRFRCUykKPj4+ICAgICAtIFJlbW92ZWQgZGVsYXlzIGZyb20gZ21hYyB3aXRoIGludGVy
bmFsIGRlbGF5Cj4+Pgo+Pj4gLSBMaW5rIHRvIHY0OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9y
LzIwMjUwNjA1LXJrMzU4OHMtY201LWlvLWR0cy11cHN0cmVhbS12NC0wLTg0NDVkYjVjYTZiMEBn
bWFpbC5jb20KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBKb3NlcGggS29ndXQgPGpvc2VwaC5rb2d1
dEBnbWFpbC5jb20+Cj4+PiAtLS0KPj4+IEpvc2VwaCBLb2d1dCAoMyk6Cj4+PiAgICAgICAgIGR0
LWJpbmRpbmdzOiBhcm06IHJvY2tjaGlwOiBBZGQgUmFkeGEgQ001IElPIGJvYXJkCj4+PiAgICAg
ICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgcmszNTg4IGJhc2VkIFJhZHhhIENNNQo+Pj4g
ICAgICAgICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIHN1cHBvcnQgZm9yIENNNSBJTyBjYXJy
aWVyCj4+Pgo+Pj4gICAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwg
ICAgICAgICAgfCAgIDcgKwo+Pj4gICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtl
ZmlsZSAgICAgICAgICAgICAgfCAgIDEgKwo+Pj4gICAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OHMtcmFkeGEtY201LWlvLmR0cyAgICAgfCA0ODYgKysrKysrKysrKysrKysrKysrKysrCj4+
PiAgICAuLi4vYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1yYWR4YS1jbTUuZHRzaSB8
IDEzNSArKysrKysKPj4+ICAgIDQgZmlsZXMgY2hhbmdlZCwgNjI5IGluc2VydGlvbnMoKykKPj4+
IC0tLQo+Pj4gYmFzZS1jb21taXQ6IDBhZjJmNmJlMWI0MjgxMzg1YjYxOGNiODZhZDk0NmVkZWQw
ODlhYzgKPj4+IGNoYW5nZS1pZDogMjAyNTA2MDUtcmszNTg4cy1jbTUtaW8tZHRzLXVwc3RyZWFt
LWY0ZDFlODUzOTc3ZQo+Pj4KPj4+IEJlc3QgcmVnYXJkcywKPj4KPiAKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
