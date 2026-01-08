Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B31ACF6A89
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 09:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CWTNTrc+c7tSWf/AIOgG87yZb/XuI+m21/88iLopeCs=; b=KijoGps7jj02xC
	y1IYgdTC0oT4WjB8YL5BJhMfi9WvGYpxeeSZbJ1D1iPrxpzxwXtEFHTGWg4X7bVKkwcfWWopiOhNv
	0+ZfpyDYhN7WBnh3O5obyqvpAGHaPa/viSKMP+G6XHlw5T197pyMrAB9HU3+DMuFboxldfVeolehC
	bV7rtiLKYSVeb68ivwyd5d1r44RkNQWxo8+miWk8X5oWw/UxwVExUsepIyzz9FgvE4cId4BPwl0Q6
	iVWaVrfUYyBchPXKBdbQkRGr8sufa/kszm9L07Sbbllm/GgmrZFi3JEldCeVPXzodw4lSprpPEnbD
	UJaW9z7w4gxAD0RPyPjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdlv6-0000000GNmh-22G5;
	Thu, 08 Jan 2026 09:03:04 +0000
Received: from mail-m32118.qiye.163.com ([220.197.32.118])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdlv2-0000000GNli-1fWP;
	Thu, 08 Jan 2026 09:03:02 +0000
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2ff0431a8;
	Thu, 8 Jan 2026 17:02:53 +0800 (GMT+08:00)
Message-ID: <779a407c-0464-4d46-b73d-ad61834f1fcf@rock-chips.com>
Date: Thu, 8 Jan 2026 17:02:52 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: Alexey Charkov <alchark@gmail.com>
Cc: Chaoyi Chen <kernel@airkyi.com>, Andrew Lunn <andrew@lunn.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Quentin Schulz <quentin.schulz@cherry.de>,
 Kever Yang <kever.yang@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
 John Clark <inindev@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Peter Robinson <pbrobinson@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260107070322.323-1-kernel@airkyi.com>
 <20260107070322.323-3-kernel@airkyi.com>
 <b5a3470c-aa03-42d0-a575-b705f709f8e6@lunn.ch>
 <CABjd4YzsjZXe16XWgrHRG5shNA_DQJF45i1roahvfAfV4xdU0Q@mail.gmail.com>
 <a545fec0-cb30-489a-b5e6-4ee87dcab41c@rock-chips.com>
 <5FFFBA7FAF5745A7+e0381969-800a-4bf6-9aac-81cffa3469a1@airkyi.com>
 <CABjd4YxwD_q_FrEuPw_GY+vG6700Vd_weWqdcFn2C3V0fqpO-Q@mail.gmail.com>
 <6f55c325-6b2a-4fe9-a487-5f1ae7969d9d@rock-chips.com>
 <CABjd4YyMj=1pQBwqo9suu0W_HD=MG=zb5wo9dheguMBxi+oNqA@mail.gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <CABjd4YyMj=1pQBwqo9suu0W_HD=MG=zb5wo9dheguMBxi+oNqA@mail.gmail.com>
X-HM-Tid: 0a9b9cd833e703abkunm6fe3af1412039f
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU9JS1ZOSRhNThpMShlMQkxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpPSE
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=G/XnIAF76d1bw5CoUd2oG1QvUlQwWFNygiwzBL4t0jnXb3tNQBjvGWCmQNLK43XD5qrYVVrJnVI45zF4Jiiy9jr1/wCTkXORwg5arW/V9XYyxsqBxgD2QmfNAO/h+yFfp/eN9TNe9gmv/3FV08FC3vvhBhENBEu4ef3QhEtJq2Y=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=r9gkDatKrEuejlwaty5oSemKfkQdJiS/Uu/XyP3hCgQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_010301_036082_F8ECCC37 
X-CRM114-Status: GOOD (  20.60  )
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

T24gMS84LzIwMjYgNDo0OSBQTSwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gT24gVGh1LCBKYW4g
OCwgMjAyNiBhdCAxMjozOOKAr1BNIENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNoaXBz
LmNvbT4gd3JvdGU6Cj4+Cj4+IE9uIDEvOC8yMDI2IDQ6MTEgUE0sIEFsZXhleSBDaGFya292IHdy
b3RlOgo+Pj4gT24gVGh1LCBKYW4gOCwgMjAyNiBhdCAxMjowMuKAr1BNIENoYW95aSBDaGVuIDxr
ZXJuZWxAYWlya3lpLmNvbT4gd3JvdGU6Cj4+Pj4KPj4+PiBPbiAxLzgvMjAyNiAzOjQyIFBNLCBD
aGFveWkgQ2hlbiB3cm90ZToKPj4+Pj4gSGVsbG8gQWxleGV5LCBBbmRyZXcsCj4+Pj4+Cj4+Pj4+
IE9uIDEvOC8yMDI2IDI6NTMgUE0sIEFsZXhleSBDaGFya292IHdyb3RlOgo+Pj4+Pj4gT24gV2Vk
LCBKYW4gNywgMjAyNiBhdCAxMDoxOOKAr1BNIEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4g
d3JvdGU6Cj4+Pj4+Pj4KPj4+Pj4+Pj4gKyZnbWFjMCB7Cj4+Pj4+Pj4+ICsgICAgIGNsb2NrX2lu
X291dCA9ICJvdXRwdXQiOwo+Pj4+Pj4+PiArICAgICBwaHktbW9kZSA9ICJyZ21paS1yeGlkIjsK
Pj4+Pj4+Pgo+Pj4+Pj4+IHJnbWlpLXJ4aWQgaXMgb2RkLiBEb2VzIHRoZSBQQ0IgcmVhbGx5IGhh
dmUgYW4gZXh0cmEgbG9uZyBUWCBjbG9jawo+Pj4+Pj4+IGxpbmUsIGJ1dCBhIHNob3J0IFJYIGNs
b2NrIGxpbmU/Cj4+Pj4+Pj4KPj4+Pj4+PiBUcnkgY2hhbmdpbmcgdGhpcyB0byByZ21paS1pZCwg
YW5kIGRyb3AgdGhlIHR4X2RlbGF5IHByb3BlcnR5Lgo+Pj4+Pj4KPj4+Pj4+IEFjdHVhbGx5IGl0
IHdvdWxkIGJlIGdyZWF0IGlmIFJvY2tjaGlwIGNvdWxkIGNsYXJpZnkgdGhlIGRlbGF5Cj4+Pj4+
PiBkdXJhdGlvbiBpbnRyb2R1Y2VkIGJ5IGEgc2luZ2xlIGRlbGF5IGVsZW1lbnQgaW4gR01BQy1J
T01VWCBkZWxheQo+Pj4+Pj4gbGluZXMsIHdoaWNoIGFyZSBjb250cm9sbGVkIGluIHRoZSBHTUFD
IGRyaXZlciBieSB0aGUge3R4LHJ4fV9kZWxheQo+Pj4+Pj4gcHJvcGVydGllcy4gTWF5YmUgd2Ug
Y291bGQgdGhlbiBzd2l0Y2ggdG8gdXNpbmcKPj4+Pj4+IHt0eCxyeH1faW50ZXJuYWxfZGVsYXlf
cHMgZm9yIGZpbmUtdHVuaW5nIHRoZSBkZWxheXMgb24gdGhlIEdNQUMgc2lkZQo+Pj4+Pj4gYXMg
ZW52aXNhZ2VkIGluIERUIGJpbmRpbmdzIFsxXSwgYW5kIHVzZSBwaHktbW9kZSA9ICJyZ21paS1p
ZCIKPj4+Pj4+IHRocm91Z2hvdXQuIENoYW95aSwgYW55IGNoYW5jZSB5b3UgY291bGQgYXNrIGFy
b3VuZCBpbiB5b3VyIGhhcmR3YXJlCj4+Pj4+PiB0ZWFtPwo+Pj4+Pj4KPj4+Pj4+IEN1cnJlbnRs
eSB0aG91Z2ggcmVtb3ZpbmcgdGhlIGRlbGF5cyBhdCBHTUFDIHNpZGUgYWx0b2dldGhlciBjYXVz
ZXMKPj4+Pj4+IHVuc3RhYmxlIGxpbmsgb3BlcmF0aW9uIC0gc2VlIFsyXSBmb3IgZXhhbXBsZS4K
Pj4+Pj4+Cj4+Pj4+PiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2Iv
bWFzdGVyL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZXRoZXJuZXQtY29u
dHJvbGxlci55YW1sI0wzNDItTDM0Nwo+Pj4+Pj4gWzJdIGh0dHBzOi8vZ2l0bGFiLmNvbGxhYm9y
YS5jb20vaGFyZHdhcmUtZW5hYmxlbWVudC9yb2NrY2hpcC0zNTg4L2xpbnV4Ly0vY29tbWl0LzM3
MmYzZTlhZTYyY2M2MmNkZjI1NDMzOTFlYTU3YmU2YmI1NDhhMGMKPj4+Pj4KPj4+Pj4gU29ycnks
IHRoaXMgcHJvYmxlbSBoYXMgYmVlbiBkaXNjdXNzZWQgbWFueSB0aW1lcyBiZWZvcmUuIEl0J3Mg
YmVjYXVzZQo+Pj4+PiB0aGUgZ21hYyBvbiB0aGUgUm9ja2NoaXAgcGxhdGZvcm0gY3VycmVudGx5
IHJlbGllcyBvbiBzZXR0aW5nIHRoZQo+Pj4+PiBjb3JyZXNwb25kaW5nIGRlbGF5IHZpYSBwaHkt
bW9kZSBbM10uCj4+Pj4+Cj4+Pj4+IFszXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvbXFv
eWpuN21ucTZ0bXQ2bjZvZXY0d2EzaGVyamF4bHVwbWwyZm1jYW1wd2lhanZqNGFAcjV6czRkM2pk
bTVwLwo+Pj4+Pgo+Pj4+PiBUaGUgZGVsYXkgaW50cm9kdWNlZCBieSB0aGUgZGVsYXkgbGluZSBp
cyBub3QgYWJzb2x1dGUuIEluIHJlYWxpdHksCj4+Pj4+IGl0IGRlcGVuZHMgb24gZmFjdG9ycyBz
dWNoIGFzIHRoZSBjaGlwJ3MgZGVzaWduIGFuZCBwcm9jZXNzIHRlY2hub2xvZ3kuCj4+Pj4+Cj4+
Pj4+IEFuZCBmb3IgUkszNTc2LCB5b3UgY2FuIGFzc3VtZSB0aGF0Ogo+Pj4+Pgo+Pj4+PiAgICAg
ICB0aW1lKG5zKSA9IDAuMDU3OSAqIGRlbGF5X2xpbmVfY291bnQgKyAwLjEwNQo+Pj4+Pgo+Pj4+
PiBGb3IgZXhhbXBsZSwgdHhfZGVsYXkgPSA8MHgyMD4gbWVhbnM6Cj4+Pj4+Cj4+Pj4+ICAgICAg
IHRpbWUgPSAwLjA1NzkgKiAweDIwICsgMC4xMDUgbnMgPSAxLjk1NzggbnMKPj4+Pj4KPj4+Pj4g
QW5kIEkgYmVsaWV2ZSB7dHgscnh9X2ludGVybmFsX2RlbGF5X3BzIGlzIGluZGVlZCBhIGdvb2Qg
aWRlYS4KPj4+Pj4gSSdsbCB0cnkgdG8gYWRkIHRoZW0gaW4gdjMuIFRoYW5rcy4KPj4+Pj4KPj4+
Pgo+Pj4+IEkndmUgYWxzbyBzZWUgc29tZSBkdCB0aGF0IHVzZSB7dHgscnh9X2ludGVybmFsX2Rl
bGF5X3BzIGluc2lkZSB0aGUgUEhZLAo+Pj4+IGFuZCBjb21wYXJlZCB0byBkb2luZyBpdCBpbiB0
aGUgTUFDLCB3aGljaCBvbmUgaXMgdGhlIGJldHRlciBjaG9pY2U/Cj4+Pgo+Pj4gWW91ciBQSFkg
ZGVmYXVsdHMgdG8gMTk1MHBzIGluIHJnbWlpLWlkIFsxXSwgc28gYWRkaW5nIGFueXRoaW5nIG9u
IHRvcAo+Pj4gb2YgdGhhdCBvbiBHTUFDIHNpZGUgd291bGQgbGFuZCB5b3Ugd2l0aCBhIGxvbmdl
ciB0b3RhbCBUWCBkZWxheSB0aGFuCj4+PiB5b3UgY3VycmVudGx5IGdldCBhY2NvcmRpbmcgdG8g
dGhlIGNvZWZmaWNpZW50cyB5b3UndmUganVzdCBwb3N0ZWQKPj4+ICgxNzg0LjFwcykuIEkgd291
bGQgc2F5IGdvIGZvciAidHgtaW50ZXJuYWwtZGVsYXktcHMgPSA8MTgwMD4iIG9uIHRoZQo+Pj4g
UEhZIHNpZGUgZm9yIHRoZSBjbG9zZXN0IG1hdGNoLgo+Pj4KPj4+IFsxXSBodHRwczovL2dpdGh1
Yi5jb20vdG9ydmFsZHMvbGludXgvYmxvYi9tYXN0ZXIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL25ldC9tb3RvcmNvbW0lMkN5dDh4eHgueWFtbCNMMzYKPj4KPj4gQWgsIEkgdGhv
dWdodCBpdCB3YXMgc29tZXRoaW5nIGxpa2UgdGhpczoKPj4KPj4gJmdtYWMwIHsKPj4gICAgICAg
ICBwaHktbW9kZSA9ICJyZ21paSI7Cj4gCj4gcGh5LW1vZGUgPSAicmdtaWktaWQiOwo+IAo+PiAg
ICAgICAgIHR4LWludGVybmFsLWRlbGF5LXBzID0gPDE3ODQ+Owo+IAo+IERyb3AgdGhpcywgYXMg
cmVjb21tZW5kZWQgaW4gdGhlIGxlbmd0aHkgbm90ZSBhdCB0aGUgYm90dG9tIG9mIHRoZQo+IGJp
bmRpbmcgZG9jIFsxXSAodGhlIEdNQUMgc2hvdWxkbid0IGJlIGFkZGluZyBhIGRlbGF5IHRoYXQg
aXMgY2xvc2UgdG8KPiAybnMpLgo+IAo+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMv
bGludXgvYmxvYi9tYXN0ZXIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9l
dGhlcm5ldC1jb250cm9sbGVyLnlhbWwjTDM0Mi1MMzU0Cj4gCj4+IH07Cj4+Cj4+IEJ1dCB3aGF0
IHlvdSBhY3R1YWxseSBzYWlkIHdhcyB0aGlzOgo+Pgo+PiAmbWRpbzEgewo+IAo+ICZtZGlvMCBJ
IGd1ZXNzIChidXQgc2FtZSBhcHBsaWVzIHRvIGdtYWMxK21kaW8xKQo+IAo+PiAgICAgICAgIHJn
bWlpX3BoeTogZXRoZXJuZXQtcGh5QDEgewo+PiAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9
ICJldGhlcm5ldC1waHktaWVlZTgwMi4zLWMyMiI7Cj4+ICAgICAgICAgICAgICAgICByZWcgPSA8
MHgxPjsKPj4gICAgICAgICAgICAgICAgIHR4LWludGVybmFsLWRlbGF5LXBzID0gPDE3ODQ+Owo+
IAo+IFRoZSBQSFkgYmluZGluZyBbMl0gc2F5cyBpdCBjYW4ndCBhY2NlcHQgYXJiaXRyYXJ5IHZh
bHVlcyBoZXJlIC0gb25seQo+IDE1MHBzIGluY3JlbWVudHMuIFNvIHlvdSdsbCBuZWVkIGVpdGhl
ciAxNjUwIG9yIDE4MDAgdG8gZ2V0IGNsb3NlIHRvCj4geW91ciBjYWxjdWxhdGVkIHZhbHVlIGFi
b3ZlLgo+IAo+IFsyXSBodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvYmxvYi9tYXN0
ZXIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9tb3RvcmNvbW0lMkN5dDh4
eHgueWFtbCNMMzYKPiAKPj4gICAgICAgICB9Owo+PiB9Owo+Pgo+PiBUaGVzZSB0d28gYHR4LWlu
dGVybmFsLWRlbGF5LXBzYCB0aGluZ3Mgc2hvdWxkbid0IGJlIHRoZSBzYW1lLCByaWdodD8KPiAK
PiBUaGV5IGFkZCB1cCwgd2hpY2ggeW91IGRvbid0IG5lZWQgaW4gdGhpcyBjYXNlIEFGQUlDVC4K
PiAKCkFoLCBnb3QgaXQuIFRoYW5rIHlvdSBmb3IgdGhlIGNsYXJpZmljYXRpb24gOikKCi0tIApC
ZXN0LCAKQ2hhb3lpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
