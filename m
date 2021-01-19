Return-Path: <SRS0=wbav=GW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A1CC433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 09:16:12 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 664B423135
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 09:16:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 664B423135
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a74i7a/d17jEG0z1Ba1vjSZroNjpN3hZUdpGOa6MDEs=; b=GFjkgjwV1GStxzBn35yc52A59
	3b3wGNlQKSEeJp1qysauW96rwe8/5nZ1aPYFyt/RiuaI7zMbSWQLUPGJ8mbtQjtPNsUSPyQTSte2N
	Omjx/PtiCHTv0OSATJXlEesqEKuEwcRpds4i7mzxtU36Pug1cBWgJDEVjsOoVvNvY1ytBEJ3XI75z
	BLZA96ykNJ/9i89MKl4NwZ7Vkw4j13fpiD1xCTJCzo40heQhUgUZRsyLCZs+gJzwIGGmOXdsj2p38
	mpsFEsfC5MXzILhfSZ84GQXMiO/Ppc1qvWQxryLLLxs1kCRgV3moxXpKcbs1B8+ECh60EYwic0JxG
	P7Vcr3lhw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1n7M-0007FY-NE; Tue, 19 Jan 2021 09:16:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1n7I-0007EX-MC; Tue, 19 Jan 2021 09:16:01 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E82A32313C;
 Tue, 19 Jan 2021 09:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611047759;
 bh=b4Cf+wcAxaeMO0xd+RigZ7MJ8HZVYfOhWxJaBWs7WvM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Aq0084h9/Uccjg5CXUGB4RCgPArQsWrOYebgPiDSxJHpWp1+mU+8aWXHfHThHEQ8f
 A7ms7bqN+3jJWIthcfpeYhHCagIBHEsK/Pau6kwWubLLAIWAY0mDpN2hi2wqHSszBr
 IqIQYoBCyF4DuFlP/seAev0fagLUsTUzqTYUwpUsQ3IkJSn8O+HR399TWKcO9UGd8q
 Fugvl/mK6d6ZM6qvwDbeSGjAMc+wU797GbSBQ6OQ5fvsWct//qBsL6JAt+2LLD7w9X
 OCDM+c+twgMHOknYTi3Y27h5D+VxkCqu4pWsXOS1Imy/FVFOUaP1ZocgpOVaX7T/Ye
 IfLGZMXxlZWuw==
Received: by mail-lj1-f177.google.com with SMTP id e7so21088052ljg.10;
 Tue, 19 Jan 2021 01:15:58 -0800 (PST)
X-Gm-Message-State: AOAM53234/2JO8G6f+ha5codkNsesYdGDzjHmtHrqYo9vqtyvpagrgzz
 iW8PdDiW2yiUWuU8aUJH4ucz6ZrnGQUywnrLktU=
X-Google-Smtp-Source: ABdhPJxJw2lsSdR7flCVVMsk1gJDngPvsMkcb4tyQaAdRbQn4c0NHfz8kj4UCwHmvZb8kLehVQpFq3arCeY7Dh6sAWI=
X-Received: by 2002:a2e:8852:: with SMTP id z18mr1618577ljj.94.1611047757110; 
 Tue, 19 Jan 2021 01:15:57 -0800 (PST)
MIME-Version: 1.0
References: <20210106134617.391-1-wens@kernel.org>
 <20210106134617.391-2-wens@kernel.org> <12687142.y0N7aAr316@diego>
In-Reply-To: <12687142.y0N7aAr316@diego>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 19 Jan 2021 17:15:45 +0800
X-Gmail-Original-Message-ID: <CAGb2v67qN9wQW9ddYu6VpGm+nid7Bws5i94mjkKqVncG28TYxA@mail.gmail.com>
Message-ID: <CAGb2v67qN9wQW9ddYu6VpGm+nid7Bws5i94mjkKqVncG28TYxA@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] PCI: rockchip: Make 'ep-gpios' DT property optional
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210119_041600_985131_AEA390B3 
X-CRM114-Status: GOOD (  22.17  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 devicetree <devicetree@vger.kernel.org>, PCI <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Johan Jonker <jbx6244@gmail.com>,
 Chen-Yu Tsai <wens@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBKYW4gMTksIDIwMjEgYXQgNToxMSBQTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250
ZWNoLmRlPiB3cm90ZToKPgo+IEFtIE1pdHR3b2NoLCA2LiBKYW51YXIgMjAyMSwgMTQ6NDY6MTQg
Q0VUIHNjaHJpZWIgQ2hlbi1ZdSBUc2FpOgo+ID4gRnJvbTogQ2hlbi1ZdSBUc2FpIDx3ZW5zQGNz
aWUub3JnPgo+ID4KPiA+IFRoZSBSb2NrY2hpcCBQQ0llIGNvbnRyb2xsZXIgRFQgYmluZGluZyBj
bGVhcmx5IHN0YXRlcyB0aGF0ICdlcC1ncGlvcycgaXMKPiA+IGFuIG9wdGlvbmFsIHByb3BlcnR5
LiBBbmQgaW5kZWVkIHRoZXJlIGFyZSBib2FyZHMgdGhhdCBkb24ndCByZXF1aXJlIGl0Lgo+ID4K
PiA+IE1ha2UgdGhlIGRyaXZlciBmb2xsb3cgdGhlIGJpbmRpbmcgYnkgdXNpbmcgZGV2bV9ncGlv
ZF9nZXRfb3B0aW9uYWwoKQo+ID4gaW5zdGVhZCBvZiBkZXZtX2dwaW9kX2dldCgpLgo+ID4KPiA+
IEZpeGVzOiBlNzdmODQ3ZGY1NGMgKCJQQ0k6IHJvY2tjaGlwOiBBZGQgUm9ja2NoaXAgUENJZSBj
b250cm9sbGVyIHN1cHBvcnQiKQo+ID4gRml4ZXM6IDk1NmNkOTliMzVhOCAoIlBDSTogcm9ja2No
aXA6IFNlcGFyYXRlIGNvbW1vbiBjb2RlIGZyb20gUkMgZHJpdmVyIikKPiA+IEZpeGVzOiA5NjRi
YWM5NDU1YmUgKCJQQ0k6IHJvY2tjaGlwOiBTcGxpdCBvdXQgcm9ja2NoaXBfcGNpZV9wYXJzZV9k
dCgpIHRvIHBhcnNlIERUIikKPiA+IFNpZ25lZC1vZmYtYnk6IENoZW4tWXUgVHNhaSA8d2Vuc0Bj
c2llLm9yZz4KPiA+IC0tLQo+ID4gSGVpa28sIEkgZHJvcHBlZCB5b3UgcmV2aWV3ZWQtYnkgZHVl
IHRvIHRoZSBlcnJvciBtZXNzYWdlIGNoYW5nZQo+ID4KPiA+IENoYW5nZXMgc2luY2UgdjI6Cj4g
PiAgIC0gRml4IGVycm9yIG1lc3NhZ2UgZm9yIGZhaWxlZCBHUElPCj4gPgo+ID4gQ2hhbmdlcyBz
aW5jZSB2MToKPiA+ICAgLSBSZXdyaXRlIHN1YmplY3QgdG8gbWF0Y2ggZXhpc3RpbmcgY29udmVu
dGlvbiBhbmQgcmVmZXJlbmNlCj4gPiAgICAgJ2VwLWdwaW9zJyBEVCBwcm9wZXJ0eSBpbnN0ZWFk
IG9mIHRoZSAnZXBfZ3BpbycgZmllbGQKPiA+IC0tLQo+ID4gIGRyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvcGNpZS1yb2NrY2hpcC5jIHwgNSArKystLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ll
LXJvY2tjaGlwLmMKPiA+IGluZGV4IDkwNGRlYzBkM2E4OC4uOTBjOTU3ZTNiYzczIDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmMKPiA+ICsrKyBi
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5jCj4gPiBAQCAtMTE4LDkgKzEx
OCwxMCBAQCBpbnQgcm9ja2NoaXBfcGNpZV9wYXJzZV9kdChzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAq
cm9ja2NoaXApCj4gPiAgICAgICB9Cj4gPgo+ID4gICAgICAgaWYgKHJvY2tjaGlwLT5pc19yYykg
ewo+ID4gLSAgICAgICAgICAgICByb2NrY2hpcC0+ZXBfZ3BpbyA9IGRldm1fZ3Bpb2RfZ2V0KGRl
diwgImVwIiwgR1BJT0RfT1VUX0hJR0gpOwo+ID4gKyAgICAgICAgICAgICByb2NrY2hpcC0+ZXBf
Z3BpbyA9IGRldm1fZ3Bpb2RfZ2V0X29wdGlvbmFsKGRldiwgImVwIiwgR1BJT0RfT1VUX0hJR0gp
Owo+ID4gICAgICAgICAgICAgICBpZiAoSVNfRVJSKHJvY2tjaGlwLT5lcF9ncGlvKSkgewo+ID4g
LSAgICAgICAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAibWlzc2luZyBlcC1ncGlvcyBwcm9w
ZXJ0eSBpbiBub2RlXG4iKTsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBkZXZfZXJyX3Byb2Jl
KGRldiwgUFRSX0VSUihyb2NrY2hpcC0+ZXBfZ3BpbyksCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAiZmFpbGVkIHRvIGdldCBlcCBHUElPXG4iKTsKPiA+ICAgICAgICAg
ICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihyb2NrY2hpcC0+ZXBfZ3Bpbyk7Cj4KPiBsb29r
aW5nIGF0IFswXSBzaG91bGRuJ3QgdGhhdCBiZSBqdXN0Cj4gICAgICAgICByZXR1cm4gZGV2X2Vy
cl9wcm9iZShkZXYsIFBUUl9FUlIoLi4uLi4pLi4uKTsKPiBpbnN0ZWFkIG9mIGRldl9lcnJfcHJv
YmUgKyBhZGRpdGlvbmFsIHJldHVybj8KCllvdSdyZSByaWdodC4gSSB3YXMgb25seSBleHBlY3Rp
bmcgZGV2X2Vycl9wcm9iZSgpIHRvIGRlYWwgd2l0aCAtRVBST0JFX0RFRkVSLgpJIGJlbGlldmUg
dGhlcmUgd29uJ3QgYmUgYW55IGZ1dHVyZSBjaGFuZ2VzIHRoYXQgd291bGQgYWRkIGFueSBjb2Rl
IGhlcmUsCnNvIEknbGwgcmVzcGluIHdpdGggdGhlIHByb3BlciBjaGFuZ2VzIHlvdSBtZW50aW9u
ZWQuCgpUaGFua3MhCgpDaGVuWXUKCj4gSGVpa28KPgo+IFswXSBodHRwczovL2VsaXhpci5ib290
bGluLmNvbS9saW51eC9sYXRlc3Qvc291cmNlL2RyaXZlcnMvYmFzZS9jb3JlLmMjTDQyMjMKPgo+
ID4gICAgICAgICAgICAgICB9Cj4gPiAgICAgICB9Cj4gPgo+Cj4KPgo+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
