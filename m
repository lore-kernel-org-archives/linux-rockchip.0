Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C4B7CF6497
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 10:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LeP+oBFkut0KFXvdITVp2oqp3gdjXk9OCdIM85gSltA=; b=l4Mb6d0IWsewRa
	9jjBUGRryEZPIo11MdwGZ2+3MwWpeN7aFzncLGDHVQ4+d/syrcfb6VzXO76n1BO69cY6WgPx/8I8Y
	sh9MD/2mKQitH7Y7AdvdmK9OUeXFSGgZUk98Ci/6M87m05IwtWFbS7hzZZY7v+rJ65eFAdnWP9f/A
	dZC8kyXZgN3TO0AqO9AC6lOjUyljG76HNmpU6tldftFzSBxZkxLA8pqUCb3KoDMpEm02WoqalzjYm
	5QL9Yt9KVpIxkahcrMtEiBO+i1RPiFwW4thjffEDLfuLB361jL0lNDp/uAF4mu9EWo6WcgKBK+0PC
	fVQd5EIV+WkbcnyVacsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svDFx-0000000Gcka-2g9S;
	Mon, 30 Sep 2024 10:03:53 +0000
Received: from smtpbguseast3.qq.com ([54.243.244.52])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svCo7-0000000GYGQ-0SGq
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Sep 2024 09:35:09 +0000
X-QQ-mid: bizesmtpip4t1727688885tfu0b7c
X-QQ-Originating-IP: Sti39AE1hQ+wT9U+J2lB8YDgeHKXi1vxpOPPBNLiJdA=
Received: from [IPV6:240f:10b:7440:1:5fce:de0d ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 30 Sep 2024 17:34:42 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8486003921402309763
Message-ID: <A63CB3F2D83DA385+ae23278b-0254-48b3-b295-f9e2a9c228c2@radxa.com>
Date: Mon, 30 Sep 2024 18:34:41 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: fix pinctrl for pcie2x1l2 for Radxa
 ROCK 5A
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, jonas@kwiboo.se
References: <20240930022837.885-1-naoki@radxa.com> <2772744.mvXUDI8C0e@diego>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <2772744.mvXUDI8C0e@diego>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NMGzQWUSIfvTminUrR6j4V/+7T+FCFR4XVg8ayD8Mceo17mAiJ5E/Guf
	7YrspzN8/E+kAMlUE2TzTh6pn8gJCxkBOjTK7yDAZ4V6BsllxXyhLTfLZNWei2ZaxMIJsiT
	xy+4W+ypE+oxHQcAUhUCadxzYitRWM1vuD96PZmLJ2vfZ78J5VRWEGhhYsIevkJnfwlkXt4
	Byu5rc57xPTcqJbUni29eTfypehsVH/eJ57ucIlU9IZxJ1tc0mwEY5cdS9NBGHSAZyXcxMq
	SGqGP4GI6GHbAWPhnbAqrssSxz8Di38ZORPNLnzrVLXWl2D7TJ+r717nF7H2+foMQSbCro2
	vrbL4cpF5OKO9H5/kBjK/1uyEW/KtPBNwJp3QBCPuh5I94f7pmw0XTR8kF82Q0jjyZiwDN9
	pQYqW8LejFi4KlmgBzpwhSZk+qCNdhJbgE5LvGbr5em7p5KSe9lvjDEjUtGSMHIOJXCIKFe
	Vx2NygYuVbaT+JbO0Nn7cTxg3rLxM8d0bDGmmOP7QgKH0ISpxamxCBxNqFmbcA9s0MYe5ja
	kKnTqlqp9yBLb24R45EM7yn/FWXCyDs0aWlxZ9K8ebr5OeVleXra22o1xWdlak1XsoOHiV1
	d8D/B9LWqf/H8x9Jr9H0p2aVbz6+FpaCIPn4pYqwXN7zHGbidZxgKEVTcTu1JkKnBUKDxam
	YDrKqyIGpGv7AwtFRD7x834d6npa1p/OrBiqlge7e3Xqt/jrvPuJ5JtLWoxFRKFFEWLianP
	LDGQfwjOlea+sFhk/jOL14df3R+gdUoGosDkV8Q4/NnKVRWZ8asx2LI+SHQP9yEzbnZYri/
	JdvCwDJrqL/IpUjlB9rWatlIBXOghMiXoazpYm+jyNuu8ftP0Gry7HN6JWnv4PNbIgUw1Hh
	CFuVNjL57xUl756IxtH8DeWjh6WqKVYFY2OJinypUzA=
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_023507_645413_9BA5068B 
X-CRM114-Status: GOOD (  14.07  )
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

aGksCgpPbiA5LzMwLzI0IDE2OjU0LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBIaSwKPiAKPiBB
bSBNb250YWcsIDMwLiBTZXB0ZW1iZXIgMjAyNCwgMDQ6Mjg6MzcgQ0VTVCBzY2hyaWViIEZVS0FV
TUkgTmFva2k6Cj4+IGZvciBwY2llMngxbDIsIG9ubHkgcGNpZTIweDFfMl9wZXJzdG5fbTAgaXMg
cmVxdWlyZWQuCj4+IGZpeCBwaW5jdHJsIGRlZmluaXRpb25zIGZvciBwY2llMngxbDIuCj4gCj4g
SSBndWVzcyB0aGUgb3RoZXIgcGlucyBhcmUgdXNlZCBmb3Igc29tZXRoaW5nIGRpZmZlcmVudD8K
PiAKPiBOb3QgY3JpdGljaXppbmcgdGhlIGNoYW5nZSBpdHNlbGYsIGJ1dCBmb3IgYSAiZml4ZXMi
LCBJIGRvIGV4cGVjdCBzb21lCj4gZXhwbGFuYXRpb24sIHdoeSB0aGUgcHJldmlvdXMgc2V0dGlu
ZyBpcyBfd3JvbmdfIC4KCnNvcnJ5LCBmb3Iga2VybmVsLCBpdCBzaG91bGRuJ3QgbWFrZSBhbnkg
cHJvYmxlbS4gdGhpcyBwYXRjaCBqdXN0IAoiY2hhbmdlIiAobWluaW1pemUpIHBpbmN0cmwgZGVm
aW5pdGlvbnMuIEZpeGVzIHRhZyBtYXkgbm90IGJlIG5lZWRlZC4KCihmb3IgdS1ib290LCBwY2ll
MjB4MV8yX3BlcnN0bl9tMCBwaW4gZnVuY3Rpb24gbmVlZHMgdG8gYmUgR1BJTyB0byBhdm9pZCAK
ZnJlZXplLikKCkJlc3QgcmVnYXJkcywKCi0tCkZVS0FVTUkgTmFva2kKUmFkeGEgQ29tcHV0ZXIg
KFNoZW56aGVuKSBDby4sIEx0ZC4KCj4gVGhhbmtzCj4gSGVpa28KPiAKPj4gRml4ZXM6IGI3Mjhk
NGM1MWYwYyAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBlbmFibGUgUENJZSBvbiBNLjIgRSBrZXkg
Zm9yIFJhZHhhIFJPQ0sgNUEiKQo+PiBTaWduZWQtb2ZmLWJ5OiBGVUtBVU1JIE5hb2tpIDxuYW9r
aUByYWR4YS5jb20+Cj4+IC0tLQo+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4cy1yb2NrLTVhLmR0cyB8IDYgKysrKystCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJvY2stNWEuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1ODhzLXJvY2stNWEuZHRzCj4+IGluZGV4IDQzNTM1NTQzM2JiZC4uMWQ3YWRl
Y2U0MmE1IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OHMtcm9jay01YS5kdHMKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODhzLXJvY2stNWEuZHRzCj4+IEBAIC0zMTAsNyArMzEwLDcgQEAgcmdtaWlfcGh5MTogZXRoZXJu
ZXQtcGh5QDEgewo+PiAgIH07Cj4+ICAgCj4+ICAgJnBjaWUyeDFsMiB7Cj4+IC0JcGluY3RybC0w
ID0gPCZwY2llMjB4MW0wX3BpbnM+Owo+PiArCXBpbmN0cmwtMCA9IDwmcGNpZTIweDFfMl9wZXJz
dG5fbTA+Owo+PiAgIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiAgIAlyZXNldC1ncGlv
cyA9IDwmZ3BpbzMgUktfUEQxIEdQSU9fQUNUSVZFX0hJR0g+Owo+PiAgIAl2cGNpZTN2My1zdXBw
bHkgPSA8JnZjYzN2M193Zj47Cj4+IEBAIC0zMjUsNiArMzI1LDEwIEBAIGlvX2xlZDogaW8tbGVk
IHsKPj4gICAJfTsKPj4gICAKPj4gICAJcGNpZSB7Cj4+ICsJCXBjaWUyMHgxXzJfcGVyc3RuX20w
OiBwY2llMjB4MS0yLXBlcnN0bi1tMCB7Cj4+ICsJCQlyb2NrY2hpcCxwaW5zID0gPDMgUktfUEQx
IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+PiArCQl9Owo+PiArCj4+ICAgCQlwb3df
ZW46IHBvdy1lbiB7Cj4+ICAgCQkJcm9ja2NoaXAscGlucyA9IDwwIFJLX1BDNSBSS19GVU5DX0dQ
SU8gJnBjZmdfcHVsbF9ub25lPjsKPj4gICAJCX07Cj4+Cj4gCj4gCj4gCj4gCj4gCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
