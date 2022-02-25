Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB5D6C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 07:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=QAPxvCMiv5KFLVzwikuvM4z5QplTHBnOT2B8OVv9nQU=; b=RHk26H+X8Xz9ln
	qRbybiCFYGUik0cHOkvE9gNUZb2A7bWuiYxT4Tsx111CDhjfXEcQ/vGHizBMtQJrP2ovJNZLuHu2Z
	6944G076iXLUfNGewL1CIipoSpfFnLFr5xdZSszpcmZdW+LTihia4mc8NIiC131QI5tnz5GEjaz4Z
	vXJiwtqIUhQgMPaG/5HFZT0OH3F6Ekds8koUUagm/EXuVjcQVHuiq+So+5zuCn5V+DKFsccaDk/vM
	cdGSJT30k9MwKUmyv9MQhINL0hNFfEBhF7+mAOZi2f2J6sMqAQi/r1x0qyUP8f+0sYZ3xJEolNTHZ
	c8YjGyenXbd18tpqUXPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNV8W-003c83-Vo; Fri, 25 Feb 2022 07:35:32 +0000
Received: from mail-m17661.qiye.163.com ([59.111.176.61])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNV8I-003c5R-CB; Fri, 25 Feb 2022 07:35:21 +0000
Received: from HP1216 (unknown [58.22.7.114])
 by mail-m17661.qiye.163.com (Hmail) with ESMTPA id 46CFB1DF1B2;
 Fri, 25 Feb 2022 15:35:13 +0800 (CST)
Date: Fri, 25 Feb 2022 15:35:14 +0800
From: "zyf@rock-chips.com" <zyf@rock-chips.com>
To: =?GB2312?B?IlJvYiBIZXJyaW5n?= <robh@kernel.org>
Cc: =?GB2312?B?SGVpa29TdKi5Ym5lcg==?= <heiko@sntech.de>, 
 robh+dt <robh+dt@kernel.org>, "Johan Jonker" <jbx6244@gmail.com>, 
 devicetree <devicetree@vger.kernel.org>, 
 michael.riesch <michael.riesch@wolfvision.net>, 
 linux-rockchip <linux-rockchip@lists.infradead.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>, 
 linux-phy <linux-phy@lists.infradead.org>, kishon <kishon@ti.com>, 
 "Philipp Zabel" <p.zabel@pengutronix.de>, 
 =?GB2312?B?s8LBwQ==?= <cl@rock-chips.com>, 
 Kever.Yang <kever.yang@rock-chips.com>, 
 "Lee Jones" <lee.jones@linaro.org>, 
 =?GB2312?B?zuLBvLfl?= <wulf@rock-chips.com>, 
 "david.wu@rock-chips.com" <david.wu@rock-chips.com>
Subject: Re: [PATCH v8 2/4] dt-bindings: phy: rockchip: Add Naneng combo PHY
 bindings
References: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>, 
 <YheZ4XDX9kG8CocF@matsya>
X-Priority: 3
X-GUID: EB962D38-0F7E-4D9E-AFFE-81898A6AFEC1
X-Has-Attach: no
X-Mailer: Foxmail 7.2.23.116[cn]
Mime-Version: 1.0
Message-ID: <2022022515341412692315@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWRpOTENWQx1OHhkfT0tPHU
 tMVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mxw6LRw4OT5WS0sLUVE4Hh0O
 ThkaCT9VSlVKTU9OTExPTkpPS01MVTMWGhIXVQECHTsJFBgQVhgTEgsIVRgUFkVZV1kSC1lBWU5D
 VUlJVUxVSkpPWVdZCAFZQUNPSks3Bg++
X-HM-Tid: 0a7f2fce2630da2bkuws46cfb1df1b2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_233518_812847_B7825FA2 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgUm9io6wKCkkgY2FuJ3QgcmVwcm9kdWNlIHRoaXMgaXNzdWUgdW5sZXNzIHJldmVydCAiW3Y4
LDEvNF0gZHQtYmluZGluZ3M6IHNvYzogZ3JmOiBhZGQgbmFuZW5nIGNvbWJvIHBoeSByZWdpc3Rl
ciBjb21wYXRpYmxlIi4KCmJ1aWxkIGxvZzoKICBEVEMgICAgIERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmV4YW1wbGUuZHQu
eWFtbAogIENIRUNLICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHkt
cm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuZXhhbXBsZS5kdC55YW1sCgpidWlsZCBlbnZpcm9ubWVu
dDoKCnlhbWxsaW50IHZlcnNpb246IHlhbWxsaW50IDEuMjYuMwoKa2VybmVsIGJhc2U6CmNvbW1p
dCA0NDk0OGJkNDlkODc4ZGFkNmM5NzA3ZTM0ZjRhMDZkZjczYzNhODAwICh0YWc6IG5leHQtMjAy
MjAyMjQsIG9yaWdpbi9tYXN0ZXIsIG9yaWdpbi9IRUFEKQoKZHRzY2hlbWEgdmVyc2lvbjoKcGlw
MyBpbnN0YWxsIGR0c2NoZW1hIC0tdXBncmFkZQpEZWZhdWx0aW5nIHRvIHVzZXIgaW5zdGFsbGF0
aW9uIGJlY2F1c2Ugbm9ybWFsIHNpdGUtcGFja2FnZXMgaXMgbm90IHdyaXRlYWJsZQpSZXF1aXJl
bWVudCBhbHJlYWR5IHNhdGlzZmllZDogZHRzY2hlbWEgaW4gL2hvbWUyL3p5Zi8ubG9jYWwvbGli
L3B5dGhvbjMuNi9zaXRlLXBhY2thZ2VzICgyMDIxLjEwKQpDb2xsZWN0aW5nIGR0c2NoZW1hCiAg
VXNpbmcgY2FjaGVkIGR0c2NoZW1hLTIwMjIuMS1weTMtbm9uZS1hbnkud2hsICg2MyBrQikKUmVx
dWlyZW1lbnQgYWxyZWFkeSBzYXRpc2ZpZWQ6IHJmYzM5ODcgaW4gL2hvbWUyL3p5Zi8ubG9jYWwv
bGliL3B5dGhvbjMuNi9zaXRlLXBhY2thZ2VzIChmcm9tIGR0c2NoZW1hKSAoMS4zLjgpClJlcXVp
cmVtZW50IGFscmVhZHkgc2F0aXNmaWVkOiBydWFtZWwueWFtbD4wLjE1LjY5IGluIC9ob21lMi96
eWYvLmxvY2FsL2xpYi9weXRob24zLjYvc2l0ZS1wYWNrYWdlcyAoZnJvbSBkdHNjaGVtYSkgKDAu
MTcuMTYpCiAgVXNpbmcgY2FjaGVkIGR0c2NoZW1hLTIwMjEuMTItcHkzLW5vbmUtYW55LndobCAo
NjIga0IpClJlcXVpcmVtZW50IGFscmVhZHkgc2F0aXNmaWVkOiBqc29uc2NoZW1hPj0zLjAuMSBp
biAvaG9tZTIvenlmLy5sb2NhbC9saWIvcHl0aG9uMy42L3NpdGUtcGFja2FnZXMgKGZyb20gZHRz
Y2hlbWEpICg0LjAuMCkKUmVxdWlyZW1lbnQgYWxyZWFkeSBzYXRpc2ZpZWQ6IGltcG9ydGxpYi1t
ZXRhZGF0YSBpbiAvaG9tZTIvenlmLy5sb2NhbC9saWIvcHl0aG9uMy42L3NpdGUtcGFja2FnZXMg
KGZyb20ganNvbnNjaGVtYT49My4wLjEtPmR0c2NoZW1hKSAoNC44LjMpClJlcXVpcmVtZW50IGFs
cmVhZHkgc2F0aXNmaWVkOiBweXJzaXN0ZW50IT0wLjE3LjAsIT0wLjE3LjEsIT0wLjE3LjIsPj0w
LjE0LjAgaW4gL2hvbWUyL3p5Zi8ubG9jYWwvbGliL3B5dGhvbjMuNi9zaXRlLXBhY2thZ2VzIChm
cm9tIGpzb25zY2hlbWE+PTMuMC4xLT5kdHNjaGVtYSkgKDAuMTguMCkKUmVxdWlyZW1lbnQgYWxy
ZWFkeSBzYXRpc2ZpZWQ6IGF0dHJzPj0xNy40LjAgaW4gL2hvbWUyL3p5Zi8ubG9jYWwvbGliL3B5
dGhvbjMuNi9zaXRlLXBhY2thZ2VzIChmcm9tIGpzb25zY2hlbWE+PTMuMC4xLT5kdHNjaGVtYSkg
KDIxLjQuMCkKUmVxdWlyZW1lbnQgYWxyZWFkeSBzYXRpc2ZpZWQ6IHJ1YW1lbC55YW1sLmNsaWI+
PTAuMS4yIGluIC9ob21lMi96eWYvLmxvY2FsL2xpYi9weXRob24zLjYvc2l0ZS1wYWNrYWdlcyAo
ZnJvbSBydWFtZWwueWFtbD4wLjE1LjY5LT5kdHNjaGVtYSkgKDAuMi42KQpSZXF1aXJlbWVudCBh
bHJlYWR5IHNhdGlzZmllZDogdHlwaW5nLWV4dGVuc2lvbnM+PTMuNi40IGluIC9ob21lMi96eWYv
LmxvY2FsL2xpYi9weXRob24zLjYvc2l0ZS1wYWNrYWdlcyAoZnJvbSBpbXBvcnRsaWItbWV0YWRh
dGEtPmpzb25zY2hlbWE+PTMuMC4xLT5kdHNjaGVtYSkgKDQuMS4xKQpSZXF1aXJlbWVudCBhbHJl
YWR5IHNhdGlzZmllZDogemlwcD49MC41IGluIC9ob21lMi96eWYvLmxvY2FsL2xpYi9weXRob24z
LjYvc2l0ZS1wYWNrYWdlcyAoZnJvbSBpbXBvcnRsaWItbWV0YWRhdGEtPmpzb25zY2hlbWE+PTMu
MC4xLT5kdHNjaGVtYSkgKDMuNi4wKQoKCj5Gcm9to7oiUm9iIEhlcnJpbmcgIDxyb2JoQGtlcm5l
bC5vcmc+Igo+VG+jullpZmVuZyBaaGFvICA8eWlmZW5nLnpoYW9Acm9jay1jaGlwcy5jb20+Cj5E
YXRlo7oyMDIyLTAyLTA5IDA0OjMzOjMyCj5TdWJqZWN0o7pSZTogW1BBVENIIHY4IDIvNF0gZHQt
YmluZGluZ3M6IHBoeTogcm9ja2NoaXA6IEFkZCBOYW5lbmcgY29tYm8gUEhZIGJpbmRpbmdzCj4K
Pk9uIFR1ZSwgMDggRmViIDIwMjIgMTc6MTM6MjQgKzA4MDAsIFlpZmVuZyBaaGFvIHdyb3RlOgo+
PiBBZGQgdGhlIGNvbXBhdGlibGUgc3RyaW5ncyBmb3IgdGhlIE5hbmVuZyBjb21ibyBQSFkgZm91
bmQgb24gcm9ja2NoaXAgU29DLgo+PiAKPj4gUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2Jo
QGtlcm5lbC5vcmc+Cj4+IFNpZ25lZC1vZmYtYnk6IFlpZmVuZyBaaGFvIDx5aWZlbmcuemhhb0By
b2NrLWNoaXBzLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogSm9oYW4gSm9ua2VyIDxqYng2MjQ0QGdt
YWlsLmNvbT4KPj4gLS0tCj4+IAo+PiBDaGFuZ2VzIGluIHY4OiBOb25lCj4+IENoYW5nZXMgaW4g
djc6Cj4+IC0gcmVtb3ZlIHUzb3RnMF9wb3J0X2VuLCB1M290ZzFfcG9ydF9lbiBhbmQgcGlwZV9z
Z21paV9tYWNfc2VsCj4+IAo+PiBDaGFuZ2VzIGluIHY1Ogo+PiAtIG1vZGlmeSBkZXNjcmlwdGlv
biBmb3Igc3NjIGFuZCBleHQtcmVmY2xrCj4+IC0gcmVtb3ZlIGFwYiByZXNldAo+PiAKPj4gQ2hh
bmdlcyBpbiB2NDoKPj4gLSByZXN0eWxlCj4+IC0gcmVtb3ZlIHNvbWUgbWluSXRlbXMKPj4gLSBh
ZGQgbW9yZSBwcm9wZXJ0aWVzCj4+IC0gcmVtb3ZlIHJlc2V0LW5hbWVzCj4+IC0gbW92ZSAjcGh5
LWNlbGxzCj4+IC0gYWRkIHJvY2tjaGlwLHJrMzU2OC1waXBlLWdyZgo+PiAtIGFkZCByb2NrY2hp
cCxyazM1NjgtcGlwZS1waHktZ3JmCj4+IAo+PiBDaGFuZ2VzIGluIHYzOiBOb25lCj4+IENoYW5n
ZXMgaW4gdjI6Cj4+IC0gRml4IGR0c2NoZW1hL2R0YyB3YXJuaW5ncy9lcnJvcnMKPj4gCj4+ICAu
Li4vcGh5L3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS55YW1sICAgICAgfCAxMDkgKysrKysr
KysrKysrKysrKysrCj4+ICAxIGZpbGUgY2hhbmdlZCwgMTA5IGluc2VydGlvbnMoKykKPj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Bo
eS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS55YW1sCj4+IAo+Cj5NeSBib3QgZm91bmQgZXJyb3Jz
IHJ1bm5pbmcgJ21ha2UgRFRfQ0hFQ0tFUl9GTEFHUz0tbSBkdF9iaW5kaW5nX2NoZWNrJwo+b24g
eW91ciBwYXRjaCAoRFRfQ0hFQ0tFUl9GTEFHUyBpcyBuZXcgaW4gdjUuMTMpOgo+Cj55YW1sbGlu
dCB3YXJuaW5ncy9lcnJvcnM6Cj4KPmR0c2NoZW1hL2R0YyB3YXJuaW5ncy9lcnJvcnM6Cj5Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1yb2NrY2hpcC1uYW5lbmctY29t
YnBoeS5leGFtcGxlLmR0LnlhbWw6MDowOiAvZXhhbXBsZS0wL3N5c2NvbkBmZGM1MDAwMDogZmFp
bGVkIHRvIG1hdGNoIGFueSBzY2hlbWEgd2l0aCBjb21wYXRpYmxlOiBbJ3JvY2tjaGlwLHJrMzU2
OC1waXBlLWdyZicsICdzeXNjb24nXQo+RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BoeS9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuZXhhbXBsZS5kdC55YW1sOjA6MDogL2V4
YW1wbGUtMC9zeXNjb25AZmRjNzAwMDA6IGZhaWxlZCB0byBtYXRjaCBhbnkgc2NoZW1hIHdpdGgg
Y29tcGF0aWJsZTogWydyb2NrY2hpcCxyazM1NjgtcGlwZS1waHktZ3JmJywgJ3N5c2NvbiddCj4K
PmRvYyByZWZlcmVuY2UgZXJyb3JzIChtYWtlIHJlZmNoZWNrZG9jcyk6Cj4KPlNlZSBodHRwczov
L3BhdGNod29yay5vemxhYnMub3JnL3BhdGNoLzE1ODk3MTkKPgo+VGhpcyBjaGVjayBjYW4gZmFp
bCBpZiB0aGVyZSBhcmUgYW55IGRlcGVuZGVuY2llcy4gVGhlIGJhc2UgZm9yIGEgcGF0Y2gKPnNl
cmllcyBpcyBnZW5lcmFsbHkgdGhlIG1vc3QgcmVjZW50IHJjMS4KPgo+SWYgeW91IGFscmVhZHkg
cmFuICdtYWtlIGR0X2JpbmRpbmdfY2hlY2snIGFuZCBkaWRuJ3Qgc2VlIHRoZSBhYm92ZQo+ZXJy
b3IocyksIHRoZW4gbWFrZSBzdXJlICd5YW1sbGludCcgaXMgaW5zdGFsbGVkIGFuZCBkdC1zY2hl
bWEgaXMgdXAgdG8KPmRhdGU6Cj4KPnBpcDMgaW5zdGFsbCBkdHNjaGVtYSAtLXVwZ3JhZGUKPgo+
UGxlYXNlIGNoZWNrIGFuZCByZS1zdWJtaXQuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
