Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE0AA606A327
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 09:55:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tSOLYIPK;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=hBCS76Q+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Og175jvQ9WrZx8LSxDrH2Q2PDx3dynZN/yqbc3f8kTs=; b=tSOLYIPKlu13+iRjVOmpX2cmpg
	/qASajDYJHWPHbCleQqhHWvLGjmFTmkmGKeAUjjflZvISgyv6aRjlG9tzlegp4Vbp4vtBzlYdkmyU
	Uey40t89JfHywUINkOeRzJz4jKY0wP65M/vX1xmcPHqym4YWdiNHgMicqUQDPrzcX1v1id1aQjKdo
	wO+XLs+CzOdF1ibGhZ03GGde6Zxor+FRBAZC9SAvS6Xqd4vVmG+2KoY5CDUhzRr43ezKRkAyCCnyB
	HACMHA+Oa/+ULpwL9eLXESKM2ONJTm24D8zGpLlQF2AqJ0PovP8uJs8RVm+lHrrtG0D6Tu5JqTZow
	bGGdWlEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRo0X-0000000CGy6-3erI;
	Fri, 13 Nov 2026 09:55:45 +0000
Received: from mail-m2436.xmail.ntesmail.com ([45.195.24.36])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRo0R-0000000CGvt-4Acm;
	Fri, 13 Nov 2026 09:55:43 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5495af5ba;
	Fri, 13 Nov 2026 17:55:30 +0800 (GMT+08:00)
Message-ID: <4fb5e43c-93c7-4284-8e9c-af403cfe16d1@rock-chips.com>
Date: Fri, 13 Nov 2026 17:55:27 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Manivannan Sadhasivam <mani@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 4/5] phy: rockchip-snps-pcie3: Check more sram init status
 for RK3588
To: Alexey Charkov <alchark@flipper.net>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
References: <1766560210-100883-1-git-send-email-shawn.lin@rock-chips.com>
 <1766560210-100883-5-git-send-email-shawn.lin@rock-chips.com>
 <CAKTNdwFfQyMGJQnFU5cwQyOsXvEx4NowOT6n-jPkM4b0zGX50w@mail.gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <CAKTNdwFfQyMGJQnFU5cwQyOsXvEx4NowOT6n-jPkM4b0zGX50w@mail.gmail.com>
X-HM-Tid: 0aa1d4556b3903a4kunm237a15301760be
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCHUtIVkxOSB1NHk8fShpJGFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5LVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=hBCS76Q+d8V4O4Z3p5xbAYHQNvimilnBft09vdrZ6Of7g3VHStYkGDR2mEgv1HILwMravYvVXplN/vTWdczG7acQm7JzzBO8YLJCCFrp1vx4WaE3RpT9SzQcAJ3bc54azR4o5m6ceEhMmXlNKm05QhbBiCfSpw/6h9jz4+ImO6s=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=O7SKCVB4PMXbdqrNEiBDGYQ9dYqNfd/aoujObYmzbmg=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_015540_605010_5D9806C9 
X-CRM114-Status: GOOD (  26.47  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgQWxleGV5CgrlnKggMjAyNi8xMS8xMyDmmJ/mnJ/kupQgMTY6NDYsIEFsZXhleSBDaGFya292
IOWGmemBkzoKPiBIaSBTaGF3biwKPiAKPiBPbiBXZWQsIERlYyAyNCwgMjAyNSBhdCAxMToxMOKA
r0FNIFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPj4KPj4gQWxs
IHRoZSBsb3dlciA0IGJpdHMgc2hvdWxkIGJlIGNoZWNrZWQgd2hpY2ggc2hvd3MgdGhlIG1wbGx4
X3N0YXRlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNo
aXBzLmNvbT4KPj4gLS0tCj4+Cj4+ICAgZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlw
LXNucHMtcGNpZTMuYyB8IDIgKy0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC1zbnBzLXBjaWUzLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtc25wcy1wY2llMy5jCj4+IGluZGV4IGY1YTVkMGFmLi42Y2MzOGUzIDEwMDY0NAo+PiAtLS0g
YS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc25wcy1wY2llMy5jCj4+ICsrKyBi
L2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zbnBzLXBjaWUzLmMKPj4gQEAgLTQz
LDcgKzQzLDcgQEAKPj4gICAjZGVmaW5lIFJLMzU4OF9QQ0lFM1BIWV9HUkZfUEhZMF9MTjFfQ09O
MSAgICAgIDB4MTEwNAo+PiAgICNkZWZpbmUgUkszNTg4X1BDSUUzUEhZX0dSRl9QSFkxX0xOMF9D
T04xICAgICAgMHgyMDA0Cj4+ICAgI2RlZmluZSBSSzM1ODhfUENJRTNQSFlfR1JGX1BIWTFfTE4x
X0NPTjEgICAgICAweDIxMDQKPj4gLSNkZWZpbmUgUkszNTg4X1NSQU1fSU5JVF9ET05FKHJlZykg
ICAgICAgICAgICAgKHJlZyAmIEJJVCgwKSkKPj4gKyNkZWZpbmUgUkszNTg4X1NSQU1fSU5JVF9E
T05FKHJlZykgICAgICAgICAgICAgICgocmVnICYgMHhmKSA9PSAweGYpCj4gCj4gVGhpcyBicmVh
a3MgUENJZTN4NCBvbiBteSBSYWR4YSBST0NLIDVCLCB3aGljaCB0aGVuIGNhbm5vdCBmaW5kIGl0
cwo+IE5WTWUgcm9vdCBmaWxlc3lzdGVtLiBTZWJhc3RpYW4ncyByb2NrY2hpcC1kZXZlbCBicmFu
Y2ggY2FycmllcyB0aGlzCj4gc2VyaWVzLCBhbmQga2VybmVscyBidWlsdCBmcm9tIGl0IGZhaWwg
d2l0aDoKPiAKPiAgICBwaHkgcGh5LWZlZTgwMDAwLnBoeS4xMzogbG9jayBmYWlsZWQgMHg3LCBj
aGVjayBpbnB1dCByZWZjbGsgYW5kIHBvd2VyIHN1cHBseQo+ICAgIHJvY2tjaGlwLWR3LXBjaWUg
YTQwMDAwMDAwLnBjaWU6IHBoeSBsb2NrIGZhaWxlZAo+ICAgIHJvY2tjaGlwLWR3LXBjaWUgYTQw
MDAwMDAwLnBjaWU6IHByb2JlIHdpdGggZHJpdmVyIHJvY2tjaGlwLWR3LXBjaWUKPiBmYWlsZWQg
d2l0aCBlcnJvciAtMTEwCj4gCj4gVGhlIFJLMzU4OCBUUk0gKFYxLjAsIFBhcnQgMSkgZGVzY3Jp
YmVzIFBDSWUzUEhZX0dSRl9QSFl7MCwxfV9TVEFUVVMxCj4gYXMgZm9sbG93czoKPiAKPiAgICBi
aXQgMCAgICAgc3JhbV9pbml0X2RvbmUKPiAgICBiaXQgMSAgICAgcGNzX3B3cl9lbiAgICAgKHJl
c2V0IHZhbHVlIDEpCj4gICAgYml0IDIgICAgIHBtYV9wd3JfZW4gICAgIChyZXNldCB2YWx1ZSAx
KQo+ICAgIGJpdCAzICAgICBtcGxsYV9zdGF0ZQo+ICAgIGJpdHMgNTo0ICByZXNlcnZlZAo+ICAg
IGJpdCA2ICAgICBtcGxsYl9zdGF0ZQo+IAo+IFNvIHRoZSBsb3dlciBmb3VyIGJpdHMgYXJlIG5v
dCBhbGwgUExMIHN0YXRlczogYml0cyAxIGFuZCAyIGFyZSBwb3dlcgo+IHN3aXRjaCBlbmFibGVz
LCBhbmQgdGhlIG9ubHkgUExMIGFtb25nIHRoZW0gaXMgTVBMTEEsIHdoaWxlIE1QTExCIGlzCj4g
Yml0IDYuCj4gCj4gT24gdGhpcyBib2FyZCBNUExMQSBpcyBvZmYgZXZlbiBvbiBhIHdvcmtpbmcg
bGluay4gV2l0aCB0aGlzIHBhdGNoCj4gcmV2ZXJ0ZWQsIFBIWTBfU1RBVFVTMSBhbmQgUEhZMV9T
VEFUVVMxIGJvdGggcmVhZCAweDQ3IG9uY2UgdGhlIGxpbmsKPiBoYXMgdHJhaW5lZCBhdCA4IEdU
L3MgeDQ6IFNSQU0gaW5pdGlhbGlzZWQsIE1QTExCIHJ1bm5pbmcsIE1QTExBIG9mZi4KPiBXaGVu
IHRoZSBjaGVjayBmYWlscyB0aGV5IHJlYWQgMHg3LCBzbyBuZWl0aGVyIFBMTCBpcyBydW5uaW5n
IHlldCBhdAo+IHRoYXQgcG9pbnQsIGFuZCBjaGVja2luZyBmb3IgTVBMTEIgaW5zdGVhZCB3b3Vs
ZCBmYWlsIHRvby4KPiAKPiBSZXZlcnRpbmcgb25seSB0aGlzIHBhdGNoLCB3aXRoIHRoZSByZXN0
IG9mIHRoZSBzZXJpZXMgYXBwbGllZAo+IChyb2NrY2hpcC1kZXZlbCBhdCBkNzQzNjM0NmZjMzEs
IHY3LjQtcmMyKSwgYnJpbmdzIFBDSWUzeDQgYW5kIHRoZQo+IE5WTWUgYmFjay4KPiAKCkVhY2gg
cG9ydCBoYXMgYSBNUExMQSArIGEgTVBMTEIuIEluIGFnZ3JlZ2F0aW9uIG1vZGUsIE1QTExBIHNo
b3VsZAphbHdheXMgYmUgMSBvbmNlIGRvbmUgZm9yIGJvdGggb2YgcG9ydDAgYW5kIHBvcnQxLiBC
dXQgaW4gYmlmdXJjYXRpb24KbW9kZSwgTVBMTEIgd2lsbCBjaGFuZ2UuIFNvIGJhc2ljbGx5LCBS
b2NrY2hpcCBQSFkgdGVhbSBzdWdnZXN0cyB0bwpjaGVjayBtcGxsYSBpbnN0ZWFkIG9mIG1wbGxi
IGZvciBkaWZmZXJudCB1c2UgY2FzZXMsIGR1cmluZyBjYWxpYnJhdGlvbi4KVGhhdCB3YXMgZG9u
ZSBmb3IgdmVuZG9yIGtlcm5lbCBmb3IgcXVpdGUgYSBsb25nIHRpbWUuIFNvIEkgd2FzCnN1cnBy
aXNpbmcgdG8ga25vdyBpbiB5b3VyIGNhc2UsIHJvY2sgNWIgdXNpbmcgaXQgaW4gYWdncmVnYXRp
b24gbW9kZSwKaXQgZGlkbid0IHdvcmsgdGhhdCB3YXkuIFBsZWFzZSBsZXQgbWUgYXNrIGludGVy
YW5sbHkuLi4KCj4gV2hhdCBpcyB0aGUgY2hlY2sgbWVhbnQgdG8gY2F0Y2g/IElmIGl0IGlzIFBM
TCBsb2NrLCB3aGljaCBiaXRzLCBhbmQKPiBhdCB3aGF0IHBvaW50LCB3b3VsZCBiZSByaWdodCBm
b3IgYSBsaW5rIHRoYXQgcnVucyBvbiBNUExMQj8KPiBPdGhlcndpc2UsIHNyYW1faW5pdF9kb25l
IChiaXQgMCkgYWxvbmUgbG9va3MgbGlrZSB0aGUgcmlnaHQgY29uZGl0aW9uCj4gaGVyZS4KPiAK
PiBCZXN0IHJlZ2FyZHMsCj4gQWxleGV5Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
