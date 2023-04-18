Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54DADC77B76
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 08:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQuJTQtbf27HrTa2oNha/sKZCkwVI+uPi0owmN1UKqc=; b=wCE8l3bpyu179Z
	sxZ6ACkk9hh1MT6GoWnAKyGpCIt18QzTOZfCdwlSNtQgmM1/CzLXTYbp5HXukvkwaAQAiGKxb57dQ
	lrTHQP0PkYHzaJ+A5yKNxX1Itpj2sRC4t2bwTcc5odFmpiycfWbdM+BqY4lHtdV2i8kpJnlWao+Au
	6SfS3OaO58DP3q2FIU1r8MtyCLHZJ82+QcFE2VhGVQ4hI5BdE9EbxGv+B0IZeMfRRTIn7KoVFNyGU
	bkeKNNf5M7gkMFu7UeaRAsb0+5jE6J0AH2WzzAbvRJ1KGHLpB42E3uU4b5caHddX18PiXXmyHotsD
	vMjAN+3416ThhDDqZGKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pogGw-001FDS-2w;
	Tue, 18 Apr 2023 08:01:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pogGr-001FBO-1x;
	Tue, 18 Apr 2023 08:01:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 37D9761CD0;
	Tue, 18 Apr 2023 08:01:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B5ADC4339B;
	Tue, 18 Apr 2023 08:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681804860;
	bh=nMlwZvx07/xNUjaxnaVPeCIohut3J38u8ZLXebDqb+A=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=nLTflCHDIrlW/mcy0pJ4qyVWNUk34Ys8hjKCa+EvmGXC8OXA+KBhw/sJOYrI8SSo4
	 yhU0xZwSY4DoRO5fYTNva30jOqG+AapFA3kRobms+8uYkQITQyJwzuKsyUfpYzhKSt
	 CqzqMAddTvNLPstCLY3LUgHJiGjlF6zHrfnD30lpADqMC8150s8kXq4HEuyom9UsIJ
	 AP9MVGD+xvrx5hjMXO/QSvrXuhxt1ojRIv80i2OPGdg8IGjmWbf7XqyqYOZPgyNUB/
	 T/OZ4PrhBUAyG2M7GjpHy5D2bF9sQY/OpH7Vu0baLCEB7QASxbq6/ubOiubhSnaY2U
	 H/dlg7kNjLWKA==
Message-ID: <402e9a89-61fb-0ff1-fd82-e5327458c028@kernel.org>
Date: Tue, 18 Apr 2023 17:00:56 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v4 00/11] PCI: rockchip: Fix RK3399 PCIe endpoint
 controller driver
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: alberto.dassatti@heig-vd.ch, xxm@rock-chips.com,
 Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Brian Norris <briannorris@chromium.org>,
 Johan Jonker <jbx6244@gmail.com>, Caleb Connolly <kc@postmarketos.org>,
 Corentin Labbe <clabbe@baylibre.com>, Judy Hsiao <judyhsiao@chromium.org>,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 Hugh Cole-Baker <sigmaris@gmail.com>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
 <ea29e339-6f61-5bbb-7290-03df629d5b11@kernel.org>
 <CAAEEuhpj4TZNrPEPn7LuGOHHoYt1FbCEGH1d9g+8iKMeoBA+=Q@mail.gmail.com>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <CAAEEuhpj4TZNrPEPn7LuGOHHoYt1FbCEGH1d9g+8iKMeoBA+=Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_010101_725955_D30A4070 
X-CRM114-Status: GOOD (  26.16  )
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

T24gNC8xOC8yMyAxNjo1MSwgUmljayBXZXJ0ZW5icm9layB3cm90ZToKPiBPbiBUdWUsIEFwciAx
OCwgMjAyMyBhdCAyOjA54oCvQU0gRGFtaWVuIExlIE1vYWwgPGRsZW1vYWxAa2VybmVsLm9yZz4g
d3JvdGU6Cj4+Cj4+IE9uIDQvMTcvMjMgMTg6MjYsIFJpY2sgV2VydGVuYnJvZWsgd3JvdGU6Cj4+
PiBUaGlzIGlzIGEgc2VyaWVzIG9mIHBhdGNoZXMgdGhhdCBmaXhlcyB0aGUgUENJZSBlbmRwb2lu
dCBjb250cm9sbGVyIGRyaXZlcgo+Pj4gZm9yIHRoZSBSb2NrY2hpcCBSSzMzOTkgU29DLiBUaGUg
ZHJpdmVyIHdhcyBpbnRyb2R1Y2VkIGluIGNvbW1pdAo+Pj4gY2Y1OTBiMDc4MzkxICgiUENJOiBy
b2NrY2hpcDogQWRkIEVQIGRyaXZlciBmb3IgUm9ja2NoaXAgUENJZSBjb250cm9sbGVyIikKPj4+
IFRoZSBvcmlnaW5hbCBkcml2ZXIgaGFkIGlzc3VlcyBhbmQgd291bGQgbm90IGFsbG93IGZvciB0
aGUgUkszMzk5IHRvCj4+PiBvcGVyYXRlIGluIFBDSWUgZW5kcG9pbnQgbW9kZSBjb3JyZWN0bHku
IFRoaXMgcGF0Y2ggc2VyaWVzIGZpeGVzIHRoYXQgc28KPj4+IHRoYXQgdGhlIFBDSWUgY29yZSBj
b250cm9sbGVyIG9mIHRoZSBSSzMzOTkgU29DIGNhbiBub3cgYWN0IGFzIGEgUENJZQo+Pj4gZW5k
cG9pbnQuIFRoaXMgaXMgdjQgb2YgdGhlIHBhdGNoIHNlcmllcyBhbmQgYWRkcmVzc2VzIHRoZSBj
b21tZW50cyByZWNlaXZlZAo+Pj4gZHVyaW5nIHRoZSByZXZpZXcgb2YgdGhlIHYzIFsxXS4gVGhl
IGNoYW5nZXMgdG8gdGhlIHYzIGFyZSBtaW5vciBhbmQgbm9uZSBvZgo+Pj4gdGhlbSBjaGFuZ2Ug
dGhlIGxvZ2ljIG9mIHRoZSBkcml2ZXIuCj4+Pgo+Pj4gVGhhbmsgeW91IGluIGFkdmFuY2UgZm9y
IHJldmlld2luZyB0aGlzIHBhdGNoIHNlcmllcyBhbmQgaG9wZWZ1bGx5Cj4+PiBnZXR0aW5nIHRo
aXMgbWVyZ2VkLiBIYXZpbmcgYSBmdW5jdGlvbmFsIFBDSWUgZW5kcG9pbnQgY29udHJvbGxlcgo+
Pj4gZHJpdmVyIGZvciB0aGUgUkszMzk5IHdvdWxkIGFsbG93IHRvIGRldmVsb3AgZnVydGhlciBQ
Q0llIGVuZHBvaW50Cj4+PiBmdW5jdGlvbnMgdGhyb3VnaCB0aGUgTGludXggUENJZSBlbmRwb2lu
dCBmcmFtZXdvcmsgdXNpbmcgdGhpcyBTb0MuCj4+Pgo+Pj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2xpbnV4LXBjaS8yMDIzMDQwNDA4MjQyNi4zODgwODEyLTEtcmljay53ZXJ0ZW5icm9l
a0BnbWFpbC5jb20vCj4+Pgo+Pj4gU3VtbWFyeSBvZiBjaGFuZ2VzIHRvIFYzIDoKPj4+Cj4+PiAq
IFNldCB0aGUgZmllbGRzIGluIHRoZSBzdGFuZGFyZCBvcmRlciBpbiB0aGUgZHRzaSBhbmQgcmVt
b3ZlZCB1bm5lY2Vzc2FyeQo+Pj4gICBjaGFuZ2UgaW4gYXNzb2NpYXRlZCBkb2N1bWVudGF0aW9u
LCB0aGFua3MgdG8gS3J6eXN6dG9mIGZvciBwb2ludGluZyB0aGlzIG91dC4KPj4+ICogQWRkZWQg
Y29tbWVudCB0byBleHBsYWluIGhvdyBNU0ktWCBjYXBhYmlsaXRpZXMgYWR2ZXJ0aXNlbWVudCB3
YXMgcmVtb3ZlZC4KPj4+ICogQ2hhbmdlZCBEYW1pZW4gTGUgTW9hbCA8ZGFtaWVuLmxlbW9hbEBv
cGVuc291cmNlLndkYy5jb20+IGFkZHJlc3MgdG8gaGlzCj4+PiAgIGtlcm5lbC5vcmcgYWRkcmVz
cyBEYW1pZW4gTGUgTW9hbCA8ZGxlbW9hbEBrZXJuZWwub3JnPiBpbiB0YWdzLgo+Pj4gKiBbbWlu
b3JdIFNpbXBsaWZpZWQgY29kZSB3aGVyZSBhIHBvd2VyIG9mIDIgd2FzIGFwcGxpZWQgZm9sbG93
ZWQgYnkgYSBpbG9nMgo+Pj4gICBvcGVyYXRpb24uCj4+PiAqIFttaW5vcl0gU21hbGwgY29kZSBj
aGFuZ2VzLCByZXBsYWNlZCBjb25zdGFudCB2YXJpYWJsZSBieSBtYWNybywgc3BsaXQKPj4+ICAg
cmVtYWluaW5nIGxvbmcgbGluZXMuCj4+Cj4+IEkgcmV0ZXN0ZWQgdGhpcyBzZXJpZXMsIGFsbCBn
b29kLiBTbyBteSBUZXN0ZWQtYnkgdGFnIHN0YW5kcy4KPj4KPj4gTG9yZW56bywgS3J6eXN6dG9m
LCBCam9ybiwKPj4KPj4gTGV0J3MgcGxlYXNlIGdldCB0aGlzIHNlcmllcyBxdWV1ZWQgZm9yIDYu
NCBBU0FQIGFzIG90aGVyd2lzZSB0aGUgcm9ja2NoaXAgRVAKPj4gY29udHJvbGxlciBpcyB1bnVz
YWJsZS4KPj4KPj4gQWxzbyBwbGVhc2Ugbm90ZSB0aGF0IHdvcmtpbmcgd2l0aCBSaWNrIG9mZi1s
aXN0LCB3ZSBmb3VuZCBvdXQgdGhhdCBtb3JlIGZpeGVzCj4+IGFyZSBpbiBmYWN0IG5lZWRlZCBm
b3IgdGhlIFBDSSBhZGRyZXNzIG1hcHBpbmcgKEFUVSBwcm9ncmFtbWluZykgb24gdG9wIG9mIHRo
aXMKPj4gc2VyaWVzLiBCdXQgdGhlIHByb2JsZW1zIGRldGVjdGVkIGFyZSBzdWJ0bGUgYW5kIGhh
cmRlciB0byB0cmlnZ2VyLiBUaGUgZml4ZXMKPj4gbmVlZGVkIGludm9sdmUgY2hhbmdlcyB0byB0
aGUgRVBDIGNvcmUgQVBJIHNvIHdlIGFyZSBzdGlsbCB3b3JraW5nIG9uIHRoZSBiZXN0Cj4+IHdh
eSB0byBkbyB0aGF0LiBXZSdsbCB3b3JrIG9uIGFub3RoZXIgc2VyaWVzIG9uIHRvcCBvZiB0aGlz
IG9uZSBmb3IgYWRkcmVzc2luZwo+PiB0aGVzZSBpc3N1ZXMuCj4+Cj4+Cj4gCj4gVGhhbmsgeW91
IERhbWllbiBmb3IgdGFraW5nIHRoZSB0aW1lIHRlc3RpbmcgYW5kIHJldmlld2luZyB0aGlzLCBp
dCBpcwo+IGhpZ2hseSBhcHByZWNpYXRlZC4KPiBJIGp1c3Qgc2VudCBhIHY1IFsxXSBhZGRyZXNz
aW5nIHlvdXIgY29tbWVudHMgYW5kIGFkZGVkIHRoZSB0YWdzLgoKSnVzdCBjaGVja2VkIGFuZCBs
b29rIGFsbCBPSyB0byBtZS4gTm90aGluZyB0byBhZGQuClRoYW5rcyBmb3IgZml4aW5nIHRoaXMg
ZHJpdmVyLgoKPiAKPiBCZXN0IHJlZ2FyZHMsCj4gUmljawo+IAo+IFsxXSBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9saW51eC1wY2kvMjAyMzA0MTgwNzQ3MDAuMTA4MzUwNS0xLXJpY2sud2VydGVu
YnJvZWtAZ21haWwuY29tLwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
