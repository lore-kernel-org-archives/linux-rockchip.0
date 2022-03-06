Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F446C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Mar 2022 11:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lMgbKNfXhuNlJAFkubIeYdB1ZaB8PFLIi6N2xkajiyc=; b=qJd7ZwyNw0rqp1
	jRh7jIqV7Mg2SJgYKRkVl3W4yQCbKnz3URlcWinogLq1XwTDdQvcxc6NUCHvKyL2+HBYJGRBxkEx6
	fl0MD8YyuAj1qrH1h77zec6zjoRVAfdfdI6g12rz8mc9cqEpX4+KH1TLiWwsS9PXa2QM9Y5Dfjo/x
	Sw5Kv74yldH8jYOoJ+y/v2OcCDXDUlU794rfHH3pOxhI8+nbw/4v1yeZrqbVZ3/wMOVU4/ZaN59kU
	8e6+kamoruyZWAmWN/rTTQ1H/EsiztowSjy7G5rTuYl0+nRZAnCZd3bU9XtmdGyQsuLFQf05cqGtK
	2OhosIlwYP6GFWkbclrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQpLN-00EcvK-Tm; Sun, 06 Mar 2022 11:46:33 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQpLK-00Ecuq-Pa; Sun, 06 Mar 2022 11:46:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1646567165;
 bh=toZdQsJmBfXRcv7SI2pH2kTldzfr60wZt0rjnEq6McM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=UmQq29xJ5H3eALR4nI4JW7urBDyIjBkc0rherFEaUVPUMwCUkHnSQe5JIru9rJACu
 fSQmOsFofSpvDiLO4mtoLvPM3mJkIqLMwEBAE3fWwKltNVlRwWXHpD037gwV21iCif
 uVLjE8NTG6Sy7qJIi4iWpdkb+qEDMr3Fa96S8sJA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [157.180.225.163] ([157.180.225.163]) by web-mail.gmx.net
 (3c-app-gmx-bs64.server.lan [172.19.170.148]) (via HTTP); Sun, 6 Mar 2022
 12:46:05 +0100
MIME-Version: 1.0
Message-ID: <trinity-955432eb-74c6-48f6-984e-d88a61854727-1646567165101@3c-app-gmx-bs64>
From: Frank Wunderlich <frank-w@public-files.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org, Damien
 Le Moal <damien.lemoal@opensource.wdc.com>, Rob Herring
 <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>, Gregory Clement
 <gregory.clement@bootlin.com>, Sebastian Hesselbarth
 <sebastian.hesselbarth@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>, Michael
 Riesch <michael.riesch@wolfvision.net>, Hans de Goede
 <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Aw: Re:  Re: Re: [PATCH v5 1/5] dt-bindings: ata: ahci-platform:
 Convert DT bindings to yaml
Date: Sun, 6 Mar 2022 12:46:05 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <18f4dc19-b8a4-015e-48c8-923326cc7932@canonical.com>
References: <20220305112607.257734-1-linux@fw-web.de>
 <20220305112607.257734-2-linux@fw-web.de>
 <a2839b00-d195-131f-b2a7-d2f030a5bd95@canonical.com>
 <trinity-9ef9e0d3-e70c-45d9-bdd8-e43d1c89a8c9-1646560070497@3c-app-gmx-bs46>
 <b8553651-3cd0-845c-efbf-d2341d5506b3@canonical.com>
 <trinity-d42352e1-d778-40dd-9464-90a145653f74-1646563315484@3c-app-gmx-bs46>
 <18f4dc19-b8a4-015e-48c8-923326cc7932@canonical.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:mzvp8M4NWgc9gJ3vkex67E26cqQCs5HCxUZgX/Fd8GRab70hsw69IlVSs19mFcSVaCM2a
 x2svUvC79JwWz/8wwX22cOIenh1xT+532wIDzWzghI97EIb73RxaXZ7ObK4KzAEkcNq5FB8pbsCh
 6unSNFeQA6vk+LHLbtwHxcd5xRwGUFCbcuPonVWKivdVsrKhp0EHWETBPmgYc5xeQsPildfsTCi+
 FS4CpUrcN53g8cfM7WFeFARmHrX7GgUzxhLT3l8s1JCeVC2UjBiEWcBtMzHBdOWHh54gIYOJXlHO
 64=
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZNjNO/uzYqk=:X2O/REvEWSryvey9+y4EqS
 ZBQGJvSyGHkqrI6ePKzxmqiyfN8RECxyxN/bjtxERimKtekTd3/5ihR1BD1NAypbaZBr++B7F
 HclK3R8rgHrENMZb0d+fOYORLBsU2poVRXETSFox9AsBA9N5PUwjGQL7I3x2p8fLTbLh+jIbe
 lstae7v779Ol65aOkvJckZYjfrPUg9jN1g6/DeMPqTogVwpNRpLvf32lNNfPAAovRnP1Q6Gk3
 z5mS5YA4tvGH9XQUuWsPRtOtmMxPepuRfl3nKW3+uWyHcowCGPG0UJyI5XMjctAfbB7dpbrH2
 9x7ZkZhWp1+IviUxd/XTfccCs9nzu9rCfusTbVPD0VpcLe55DG58yzUaviFo6g6tKC6abynJ9
 oVuzWQ2dBNNcT3lzPpduVUVGuRIpL3kQRqsup88JUsBHjPqUGe9N846SWVbISW80DCkTyGm62
 jKGogqsJGQjcTNlOYCBChD5zcyZHLM9jsSmYE+aEM4aM7A5txWlVfW72XC9Mh1htHA47UjK4o
 xLZ+HG+LI70giZODhVhSrZv21MNrewLB38yeIqe5gCgrvbK7Ijh08S5TusvWj060i76vOAvQ8
 dt2x1xzE9QfztAe8CZGldHpstFff8Zca72ANQegukVvOq9GnQO4GEJBFtSNJMHNu5qYKCxMxg
 H60DzykJm7olpLJWDtwzkV/xtjf6LiYcuAMhtkEb+u3QcfgGB0/fA11syEOED6YozjjyKvi5d
 Hr69/6benqG0spnkOwFAi+0l6rexToNjOab41sUIHk729DKjDz9hlqThb0+BdUfLz3SweXXjA
 Hw2ZSFf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220306_034631_220185_4AB3330E 
X-CRM114-Status: GOOD (  24.71  )
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

Cgo+IEdlc2VuZGV0OiBTb25udGFnLCAwNi4gTcOkcnogMjAyMiB1bSAxMjoxNSBVaHIKPiBWb246
ICJLcnp5c3p0b2YgS296bG93c2tpIiA8a3J6eXN6dG9mLmtvemxvd3NraUBjYW5vbmljYWwuY29t
Pgo+IEFuOiAiRnJhbmsgV3VuZGVybGljaCIgPGZyYW5rLXdAcHVibGljLWZpbGVzLmRlPgo+IENj
OiAiRnJhbmsgV3VuZGVybGljaCIgPGxpbnV4QGZ3LXdlYi5kZT4sIGRldmljZXRyZWVAdmdlci5r
ZXJuZWwub3JnLCAiRGFtaWVuIExlIE1vYWwiIDxkYW1pZW4ubGVtb2FsQG9wZW5zb3VyY2Uud2Rj
LmNvbT4sICJSb2IgSGVycmluZyIgPHJvYmgrZHRAa2VybmVsLm9yZz4sICJBbmRyZXcgTHVubiIg
PGFuZHJld0BsdW5uLmNoPiwgIkdyZWdvcnkgQ2xlbWVudCIgPGdyZWdvcnkuY2xlbWVudEBib290
bGluLmNvbT4sICJTZWJhc3RpYW4gSGVzc2VsYmFydGgiIDxzZWJhc3RpYW4uaGVzc2VsYmFydGhA
Z21haWwuY29tPiwgIlJ1c3NlbGwgS2luZyIgPGxpbnV4QGFybWxpbnV4Lm9yZy51az4sICJIZWlr
byBTdHVlYm5lciIgPGhlaWtvQHNudGVjaC5kZT4sICJQZXRlciBHZWlzIiA8cGd3aXBlb3V0QGdt
YWlsLmNvbT4sICJNaWNoYWVsIFJpZXNjaCIgPG1pY2hhZWwucmllc2NoQHdvbGZ2aXNpb24ubmV0
PiwgIkhhbnMgZGUgR29lZGUiIDxoZGVnb2VkZUByZWRoYXQuY29tPiwgIkplbnMgQXhib2UiIDxh
eGJvZUBrZXJuZWwuZGs+LCBsaW51eC1pZGVAdmdlci5rZXJuZWwub3JnLCBsaW51eC1rZXJuZWxA
dmdlci5rZXJuZWwub3JnLCBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcsIGxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBCZXRyZWZmOiBSZTogQXc6IFJlOiBS
ZTogW1BBVENIIHY1IDEvNV0gZHQtYmluZGluZ3M6IGF0YTogYWhjaS1wbGF0Zm9ybTogQ29udmVy
dCBEVCBiaW5kaW5ncyB0byB5YW1sCj4KPiBPbiAwNi8wMy8yMDIyIDExOjQxLCBGcmFuayBXdW5k
ZXJsaWNoIHdyb3RlOgo+ID4+IEdlc2VuZGV0OiBTb25udGFnLCAwNi4gTcOkcnogMjAyMiB1bSAx
MToyNyBVaHIKPiA+PiBWb246ICJLcnp5c3p0b2YgS296bG93c2tpIiA8a3J6eXN6dG9mLmtvemxv
d3NraUBjYW5vbmljYWwuY29tPgo+ID4+PiAgICAgYWRkIGNvbXBhdGlibGVzIHVzZWQgdG9nZXRo
ZXIgd2l0aCBnZW5lcmljLWFoY2kKPiA+Pj4gICAgICAgLSBtYXJ2ZWxsLGJlcmxpbjItYWhjaQo+
ID4+Cj4gPj4gVGhpcyBpcyBmaW5lLCBqdXN0IG1lbnRpb24gaXQgaW4gY29tbWl0IG1zZy4KPiA+
Pgo+ID4+PiAgICAgICAtIHFjb20sYXBxODA2NC1haGNpCj4gPj4+ICAgICAgIC0gcWNvbSxpcHE4
MDZ4LWFoY2kKPiA+Pgo+ID4+IFRoZXNlIHlvdSBuZWVkIHRvIGNvbnN1bHQgd2l0aCBxY29tLXNh
dGEudHh0LiBUaGlzIGNvdWxkIGJlIGEgZm9sbG93aW5nCj4gPj4gY29tbWl0IHdoaWNoIHdpbGwg
aW50ZWdyYXRlIHFjb20tc2F0YS50eHQgYW5kIHJlbW92ZSBpdC4KPiA+IAo+ID4gdGhpcyBkZXBl
bmRzIG9uIFJvYnMgb3Bpbmlvbgo+IAo+IFRoZW4gbWF5YmUgcHJlY2lzZSB0aGUgcXVlc3Rpb24g
Zm9yIFJvYi4uLgoKZG8gaSBuZWVkIHRvIGZpeCB0aGUgZXJyb3JzIGZvciBxY29tLWNvbXBhdGli
bGVzL3JlZy1jb3VudC9jbG9jay1jb3VudCAocmVwb3J0ZWQgYnkgeW91ciBib3QpICpub3cqPwoK
b3IgaXMgYmluZGluZyB3ZWxsIGVub3VnaCB3aXRoIGFkZGluZyBiZXJsaW4tY29tcGF0aWJsZSBh
bmQgZml4aW5nIHRoZSBpbmRlbnRhdGlvbiBlcnJvciBpbiBleGFtcGxlPwoKZm9yIHRoZSBtYXJ2
ZWxsIGFueW9mIGlzc3VlIGFuZCB0aGUgc3BlYXIxM3h4IGkgaGF2ZSBhIHBhdGNoIGluIG15IHRy
ZWUgd2hpY2ggaSBpbmNsdWRlIGluIHY2Cgo+ID4gCj4gPj4gRWl0aGVyIHlvdSBoYXZlCj4gPj4g
YmluZGluZyBkb2N1bWVudCBmb3IgYWxsIGRldmljZXMgb3IgeW91IGNyZWF0ZSBhIGNvbW1vbiBw
YXJ0LCBsaWtlIGZvciBVRlM6Cj4gPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtZGV2
aWNldHJlZS8yMDIyMDIyMjE0NTg1NC4zNTg2NDYtMS1rcnp5c3p0b2Yua296bG93c2tpQGNhbm9u
aWNhbC5jb20vCj4gPj4gaHR0cHM6Ly9naXRodWIuY29tL2tyemsvbGludXgvY29tbWl0cy9uL2R0
LWJpbmRpbmdzLXVmcy12Mgo+ID4+Cj4gPj4gVGhlIGNob2ljZSBkZXBlbmRzIG1vcmUgb3IgbGVz
cyBvbiBjb21wbGV4aXR5IG9mIGJpbmRpbmdzLCBJT1csIGhvdyBiaWcKPiA+PiBhbmQgY29tcGxp
Y2F0ZWQgYmluZGluZ3Mgd291bGQgYmUgaWYgeW91IGNvbWJpbmUgZXZlcnl0aGluZyB0byBvbmUg
WUFNTC4KPiA+Pgo+ID4+IEluIHRoZSBjYXNlIG9mIFVGUywgdGhlIGRldmljZXMgZGlmZmVyIC0g
YnkgY2xvY2tzLCByZXNldHMsIHBoeXMgYW5kCj4gPj4gc29tZXRpbWVzIHN1cHBsaWVzLiBUaGVy
ZWZvcmUgaXQgZWFzaWVyIHRvIGhhdmUgb25lIGNvbW1vbiBzaGFyZWQgcGFydAo+ID4+IGFuZCBz
ZXZlcmFsIGRldmljZSBiaW5kaW5ncy4KPiA+Pgo+ID4+IEFIQ0kgbG9va3MgbW9yZSBjb25zaXN0
ZW50IC0gZXhjZXB0IHRoYXQgUXVhbGNvbW0gLSBzbyBtYXliZSBiZXR0ZXIgdG8KPiA+PiBoYXZl
IG9uZSBkb2N1bWVudC4KPiA+Pgo+ID4+PiAgICAgaW5jcmVhc2UgcmVnLWNvdW50IHRvIDIgKHVz
ZWQgaW4gb21hcDUtbDQuZHRzaSkKPiA+Pj4gICAgIGluY3JlYXNlIGNsb2NrLWNvdW50IHRvIDUg
KHVzZWQgaW4gcWNvbS1hcHE4MDY0LmR0c2kpCj4gPj4KPiA+PiBUaGlzIHdvdWxkIG5lZWQgYWxs
T2YraWYuCj4gPiAKPiA+IGlmIGkgZ2V0IG9rIGZyb20gcm9iIGkgYWRkIG9ubHkgdGhlIGJlcmxp
bi1jb21wYXRpYmxlIGFuZCBza2lwIHRoZSBxY29tK3JlZy9jbG9jay1jaGFuZ2UgaW4gdGhlIGZp
cnN0IGFwcGxpZWQgdmVyc2lvbi4gQWRkaW5nIHRoZSBhbGxPZi9pZiAoYW5kIG1ha2luZyBpdCBy
aWdodCkgd2lsbCBvbmx5IGRlbGF5IHRoZSBzYXRhLWJpbmRpbmcvZHRzLWNoYW5nZS4KPiAKPiBJ
IGRvbid0IGdldCB3aGF0IGlzIHRoZSBwcm9ibGVtIHdpdGggZGVsYXlpbmcgdGhpcyBwYXRjaCBm
b3IgdGhlIHRpbWUKPiBuZWVkZWQgdG8gbWFrZSB0aGUgYmluZGluZ3MgY29ycmVjdD8gRXNwZWNp
YWxseSB0aGF0IGFsdGVybmF0aXZlIGlzIHRvCj4gYWRkIGJpbmRpbmdzIGRvY3VtZW50IHdoaWNo
IHNvb24gd2lsbCBuZWVkIHRvIGJlIG1vZGlmaWVkLCBlLmcuIHNwbGl0Cj4gaW50byBjb21tb24g
cGFydC4gSXMgdGhlcmUgYSBwYXJ0aWN1bGFyIGh1cnJ5IHdpdGggdGhlc2UgYmluZGluZ3MKPiBj
b252ZXJzaW9uPwoKaSBzZWUgaXQgYXMgcmVxdWlyZW1lbnQgZm9yIGxhc3QgcGFydAoKImFybTY0
OiBkdHM6IHJvY2tjaGlwOiBBZGQgc2F0YSBub2RlcyB0byByazM1NngiCgppZiB0aGlzIGNhbiBh
cHBsaWVkIHdpdGhvdXQgdGhlIGJpbmRpbmdzIGNvbnZlcnNpb24gdGhlcmUgaXMgbm90aGluZyB0
byBodXJyeSA6KQoKcmVnYXJkcyBGcmFuawoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
