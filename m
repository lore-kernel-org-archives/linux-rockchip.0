Return-Path: <SRS0=PznR=FL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6423C4361B
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 03:30:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6AEC022CA0
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 03:30:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6AEC022CA0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cPdOTQIoagQFsEhGL5mB3TUg9MbI+uF3WJZhzn+ZWaE=; b=u1mJ1P5OKdY7sk9FVSpy15gd1
	pdQuV+qxQIQi51ZRgnCu7FG0VU7JVX+GFyxa0CDo3F1RY1zi/2jexqsd8sFNfcJlI1GxTUtQUyxMK
	9QVO6ZLaD1f4VzHcUwiKIPnhQZfUxgyesmmghZHUmfVnGd/I67xNiRcx8WOtEVeW9olhg8lRQGQft
	HKfRslvU5jK0/bdJYdVXWOntL1dTAh9Jq/hb2LltVXh6B6RrQEqJjrxA+PCiNTrXuM4bINLA+Rzg4
	SO2or67Wg5kHXuFP+vfzwIQcvfDzuAitAUx4LwGQIAgSPBvcAOVdJau1/LvPnGXTL0MKFy8vvQp1W
	ykqegZkGg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1km7Ec-0006XZ-VI; Mon, 07 Dec 2020 03:30:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1km7ET-0006SM-Al; Mon, 07 Dec 2020 03:30:38 +0000
X-Gm-Message-State: AOAM531h/dmgZXy++90fqHEX15HzjW1J7gs1/CrMY+dn78sKlBcksalF
 PvDgO91HInkxgI5Ow6CnvZU1ICm8LlSpEtSyWOM=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607311835;
 bh=eUFEhztFtJTOa9eLt/B7ip1iRdwwveiI7Iz0zAA+e4w=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=MHCFBPPGIBbBzQoTfSE+6TXG+czMkoFtneP7hOKgWTB9get5ooKKySHHq4wSSSHuu
 jnwpdLNM5HQPCKsNzuikeUfH+oTnYsw+JtnarFq1XxpoIVh4dA5bOjXNNz1hXmnzEg
 8D7JGBu2XBvUgnAAyZrJYedpgLVmPjy1DZq5h6VH7CQCMkkBDbVSgf9GYiYwvPVJ0S
 R4BMQguCVtuSekDaOCc9Q0v6AC0sq+9T/IhRwyvTH/Fh8b6J+/rJXhtcv9GzNVickx
 kRx17yyvDMEWnwuWeiZbdloL2KSo2n3w7GLWAGCMod1qHa9Ei94otUbLbqVPJRml0+
 PDuXmAcN/SqdQ==
X-Google-Smtp-Source: ABdhPJxayhJDe6prQ4cG6ZHdLlgm9hAqKWp2IyvGfr9ZYkzgsb8dlwZ9TK86GpKKZ0XyJ+ub6j9+Vpgs/sZy8RdPdas=
X-Received: by 2002:a9f:21f8:: with SMTP id 111mr10681980uac.115.1607311834678; 
 Sun, 06 Dec 2020 19:30:34 -0800 (PST)
MIME-Version: 1.0
References: <20201118071724.4866-1-wens@kernel.org>
 <20201118071724.4866-2-wens@kernel.org> <1737702.WCGJIqnLLh@diego>
In-Reply-To: <1737702.WCGJIqnLLh@diego>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 7 Dec 2020 11:30:23 +0800
X-Gmail-Original-Message-ID: <CAGb2v65119yabRi1EE1KSjJ0ehBqd-SoLD-PT-9su3Z+QSVwdg@mail.gmail.com>
Message-ID: <CAGb2v65119yabRi1EE1KSjJ0ehBqd-SoLD-PT-9su3Z+QSVwdg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] PCI: rockchip: Make 'ep-gpios' DT property optional
To: Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201206_223037_571252_DFBBEFD0 
X-CRM114-Status: GOOD (  18.42  )
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
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 devicetree <devicetree@vger.kernel.org>, linux-pci@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Johan Jonker <jbx6244@gmail.com>,
 Chen-Yu Tsai <wens@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

UGluZwoKT24gV2VkLCBOb3YgMTgsIDIwMjAgYXQgNDo0OSBQTSBIZWlrbyBTdMO8Ym5lciA8aGVp
a29Ac250ZWNoLmRlPiB3cm90ZToKPgo+IEFtIE1pdHR3b2NoLCAxOC4gTm92ZW1iZXIgMjAyMCwg
MDg6MTc6MjEgQ0VUIHNjaHJpZWIgQ2hlbi1ZdSBUc2FpOgo+ID4gRnJvbTogQ2hlbi1ZdSBUc2Fp
IDx3ZW5zQGNzaWUub3JnPgo+ID4KPiA+IFRoZSBSb2NrY2hpcCBQQ0llIGNvbnRyb2xsZXIgRFQg
YmluZGluZyBjbGVhcmx5IHN0YXRlcyB0aGF0ICdlcC1ncGlvcycgaXMKPiA+IGFuIG9wdGlvbmFs
IHByb3BlcnR5LiBBbmQgaW5kZWVkIHRoZXJlIGFyZSBib2FyZHMgdGhhdCBkb24ndCByZXF1aXJl
IGl0Lgo+ID4KPiA+IE1ha2UgdGhlIGRyaXZlciBmb2xsb3cgdGhlIGJpbmRpbmcgYnkgdXNpbmcg
ZGV2bV9ncGlvZF9nZXRfb3B0aW9uYWwoKQo+ID4gaW5zdGVhZCBvZiBkZXZtX2dwaW9kX2dldCgp
Lgo+ID4KPiA+IEZpeGVzOiBlNzdmODQ3ZGY1NGMgKCJQQ0k6IHJvY2tjaGlwOiBBZGQgUm9ja2No
aXAgUENJZSBjb250cm9sbGVyIHN1cHBvcnQiKQo+ID4gRml4ZXM6IDk1NmNkOTliMzVhOCAoIlBD
STogcm9ja2NoaXA6IFNlcGFyYXRlIGNvbW1vbiBjb2RlIGZyb20gUkMgZHJpdmVyIikKPiA+IEZp
eGVzOiA5NjRiYWM5NDU1YmUgKCJQQ0k6IHJvY2tjaGlwOiBTcGxpdCBvdXQgcm9ja2NoaXBfcGNp
ZV9wYXJzZV9kdCgpIHRvIHBhcnNlIERUIikKPiA+IFNpZ25lZC1vZmYtYnk6IENoZW4tWXUgVHNh
aSA8d2Vuc0Bjc2llLm9yZz4KPgo+IFJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29A
c250ZWNoLmRlCgpJdCdzIGJlZW4gY2xvc2UgdG8gdGhyZWUgd2Vla3Mgc2luY2UgdGhpcyB3YXMg
c2VudC4KQW55IGNoYW5jZSB3ZSBjYW4gZ2V0IHRoaXMgaW50byB2NS4xMCBvciB2NS4xMT8KCgpS
ZWdhcmRzCkNoZW5ZdQoKPiBJJ2xsIHBpY2sgdXAgcGF0Y2hlcyAyLTQgc2VwYXJhdGVseSwgYWZ0
ZXIgZ2l2aW5nIFJvYiBhIGNoYW5jZSB0byBsb29rIGF0Cj4gdGhlIHNpbXBsZSBiaW5kaW5nLgo+
Cj4KPiBIZWlrbwo+Cj4gPiAtLS0KPiA+IENoYW5nZXMgc2luY2UgdjE6Cj4gPgo+ID4gICAtIFJl
d3JpdGUgc3ViamVjdCB0byBtYXRjaCBleGlzdGluZyBjb252ZW50aW9uIGFuZCByZWZlcmVuY2UK
PiA+ICAgICAnZXAtZ3Bpb3MnIERUIHByb3BlcnR5IGluc3RlYWQgb2YgdGhlICdlcF9ncGlvJyBm
aWVsZAo+ID4gLS0tCj4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmMg
fCAyICstCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
Cj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hp
cC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmMKPiA+IGluZGV4IDkw
NGRlYzBkM2E4OC4uYzk1OTUwZTkwMDRmIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9wY2kvY29u
dHJvbGxlci9wY2llLXJvY2tjaGlwLmMKPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
cGNpZS1yb2NrY2hpcC5jCj4gPiBAQCAtMTE4LDcgKzExOCw3IEBAIGludCByb2NrY2hpcF9wY2ll
X3BhcnNlX2R0KHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCkKPiA+ICAgICAgIH0KPiA+
Cj4gPiAgICAgICBpZiAocm9ja2NoaXAtPmlzX3JjKSB7Cj4gPiAtICAgICAgICAgICAgIHJvY2tj
aGlwLT5lcF9ncGlvID0gZGV2bV9ncGlvZF9nZXQoZGV2LCAiZXAiLCBHUElPRF9PVVRfSElHSCk7
Cj4gPiArICAgICAgICAgICAgIHJvY2tjaGlwLT5lcF9ncGlvID0gZGV2bV9ncGlvZF9nZXRfb3B0
aW9uYWwoZGV2LCAiZXAiLCBHUElPRF9PVVRfSElHSCk7Cj4gPiAgICAgICAgICAgICAgIGlmIChJ
U19FUlIocm9ja2NoaXAtPmVwX2dwaW8pKSB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgZGV2
X2VycihkZXYsICJtaXNzaW5nIGVwLWdwaW9zIHByb3BlcnR5IGluIG5vZGVcbiIpOwo+ID4gICAg
ICAgICAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKHJvY2tjaGlwLT5lcF9ncGlvKTsKPiA+
Cj4KPgo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
