Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02895606D807
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 13:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tTzCxaAF;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=vW+rWMbC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=KS2zm8HVDk2z+r61Ud4XnLvpTebwLn7Ixbw4dBwKllw=; b=tTzCxaAF133BrOXEXz+SfvMvIG
	xpXxr9OwndkYyMiSFRe2A/Y7x+2/DtAHH4j9pni1PozC7CsvKHL4ahPwRnYEN+95r89koC1UfbEk6
	zcJTJ1KRcj5xzrGPFGwfsjDQdp4VBFSwCIFg8MjFljTkaJrTnBHJbqbSw+ngDxnFZ0gLl34Y4QlKq
	lLG2yDNgJlHutI/S6aM+kR7W6KNyHeR11gP6sdj4vrsQFbm97ONKY8YN/qFD8mPeM0WvKdtUkeVTb
	8REH8hOjSm7PV1ndTxmq5B1Mr9rbAhQEX4Su1AsP0Tn2oKA4MJOhKmxUKl1xDmoJztiMrdNCwnXhr
	4Dc30nkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQPOp-00000000nlG-2dgZ;
	Mon, 09 Nov 2026 13:27:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQPOm-00000000ngp-2LMC;
	Mon, 09 Nov 2026 13:27:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=//2W4dF8dRqMAfkwRAhImATI6D+c4FVFBxbhqBn9xzk=; b=vW+rWMbC+7d9RHvWCrWsBbFsUk
	5idnG3Sd13NpxvsuTmz0VMYqvaK+w9Jjq3+bj8U2rNF+hdX5K9P1M7WmFg5SvIMIRaMxtc2ZFhr9w
	ytwlggqCzUCrzwzrHd87GqnRYc0aE9k6zGwt7pjlOw44xerDF61PYznkQ5P6Z0HJlM54CB8yQ9lKR
	zyzcQ2JdveVONjsLdyQ5toBWNi0wI4+SQ8sUKexxsMl9XN97ubqW1RZj83jTsAahKc1cl2yD/h3Qj
	cFgsJWGF63ZWqoFHc5JZka+d4erYO0TJ+tOnU62kwgDdkG2h4/Qiuzie5IHW4EPRIOY3hCwkBKTVm
	l08L/sdA==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH 4/5] arm64: dts: rockchip: Add DSI panel to RK3588 EVB1
Date: Mon, 09 Nov 2026 14:26:44 +0100
Message-ID: <5573124.44csPzL39Z@diego>
In-Reply-To: <b60b7079-b7b6-4d83-8167-2e4fc6021aae@rock-chips.com>
References: <20261106-rk3588-evb1-dt-updates-v1-0-bdbe16223589@collabora.com>
 <avDN3pPY5Qwt9B1p@venus>
 <b60b7079-b7b6-4d83-8167-2e4fc6021aae@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_052700_730387_CA1B950F 
X-CRM114-Status: GOOD (  25.30  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-18.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gTW9udGFnLCA5LiBOb3ZlbWJlciAyMDI2LCAwMjozMTozNSBNaXR0ZWxldXJvcMOkaXNjaGUg
Tm9ybWFsemVpdCBzY2hyaWViIENoYW95aSBDaGVuOgo+IEhpIFNlYmFzdGlhbiwKPiBPbiAxMS85
LzIwMjYgMzo0MiBBTSwgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cj4gPiBIZWxsbyBDaGFveWks
Cj4gPiAKPiA+IE9uIFN1biwgTm92IDA4LCAyMDI2IGF0IDExOjE1OjA5QU0gKzA4MDAsIENoYW95
aSBDaGVuIHdyb3RlOgo+ID4+IEhpIFNlYmFzdGlhbiwKPiA+Pgo+ID4+IE9uIDExLzcvMjAyNiA1
OjU3IEFNLCBTZWJhc3RpYW4gUmVpY2hlbCB3cm90ZToKPiA+Pj4gVGhlIFJLMzU4OCBFVkIxIGNv
bWVzIHdpdGggYSBXNTUyNzkzREJBLVYxMCBUb3VjaHNjcmVlbi9EaXNwbGF5Cj4gPj4+IGNvbWJp
bmF0aW9uLiBJdCBjb250YWlucyBhIFdhbmNoYW5nbG9uZyBXNTUyNzkzQkFBIHBhbmVsIGFuZCBh
Cj4gPj4+IEdvb2RpeCBHVDExNTggdG91Y2hzY3JlZW4uIFRoaXMgYWRkcyB0aGUgRFQgZGVzY3Jp
cHRpb24gb2YgaXQuCj4gPj4+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJh
c3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+ID4+PiAtLS0KPiA+Pj4gIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWV2YjEtdjEwLmR0cyB8IDkwICsrKysrKysrKysrKysr
KysrKysrKysrKwo+ID4+PiAgMSBmaWxlIGNoYW5nZWQsIDkwIGluc2VydGlvbnMoKykKPiA+Pj4K
PiA+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWV2
YjEtdjEwLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWV2YjEtdjEw
LmR0cwo+ID4+PiBpbmRleCA2YTk1YThiYjZmYjguLjMyN2NhMTNiNjBmMCAxMDA2NDQKPiA+Pj4g
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZXZiMS12MTAuZHRzCj4g
Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWV2YjEtdjEwLmR0
cwo+ID4+PiBAQCAtMjA0LDYgKzIwNCwxNSBAQCB2Y2MxMnZfZGNpbjogcmVndWxhdG9yLXZjYzEy
di1kY2luIHsKPiA+Pj4gIAkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTIwMDAwMDA+Owo+
ID4+PiAgCX07Cj4gPj4+ICAKPiA+Pgo+ID4+IEkgc2VlbSB1bmFibGUgdG8gYXBwbHkgdGhlIHBh
dGNoIHRvIHRoZSBsYXRlc3QgbGludXgtbmV4dCB0cmVlLgo+ID4+Cj4gPj4gU28gSSB0cmllZCB0
byByZXNvbHZlIHRoZSBjb25mbGljdCBtYW51YWxseSwgYnV0IHRoZSBhY3R1YWwKPiA+PiB0ZXN0
IHNjcmVlbiBkaWQgbm90IGRpc3BsYXkuIEkgd2lsbCBsb29rIGludG8gdGhpcyBmdXJ0aGVyLgo+
ID4gCj4gPiBTdHJhbmdlLiBUaGUgYmFzZSBvZiB0aGlzIHNlcmllcyB3YXMgSGVpa28ncyBmb3It
bmV4dCB0cmVlIGZyb20KPiA+IEZyaWRheS4gTm8gUkszNTg4IEVWQjEgcGF0Y2hlcyBsYW5kZWQg
c2luY2UgdGhlbjoKPiA+IAo+ID4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4
L2tlcm5lbC9naXQvbW1pbmQvbGludXgtcm9ja2NoaXAuZ2l0L2NvbW1pdC8/aD1mb3ItbmV4dCZp
ZD1jYWJiNjgxMWMzOGE0NjMzN2Q1ZjQyNTJiNGRjMzkwZjkyOTY4NTZjCj4gPiAKPiA+IElmIHlv
dXIgYm9hcmQgdXNlcyB0aGUgb3JpZ2luYWwgUm9ja2NoaXAgYm9vdGxvYWRlciwgd2hpY2ggc2hv
d3MgYQo+ID4gUm9ja2NoaXAgbG9nbyBvbiB0aGUgcGFuZWwsIHlvdSBhbHNvIG5lZWQgQ3Jpc3Rp
YW4ncyBsYXRlc3QgWVVWNDIwCj4gPiBwYXRjaGVzIHRoYXQgcmVzZXQgVk9QMiBhdCBwcm9iZSB0
aW1lIGF2b2lkaW5nIHNvbWUgaXNzdWVzIHdpdGggdGhlCj4gPiBwcmUtaW5pdGlhbGl6ZWQgcGFu
ZWwgYXMgYSBzaWRlIGVmZmVjdC4gVGhvc2Ugd2VyZSByZWNlbnRseSBhcHBsaWVkCj4gPiBieSBI
ZWlrbyB0byB0aGUgRFJNIHRyZWUsIHNvIHRlc3Rpbmcgb24gbGludXgtbmV4dCBpcyBpbmRlZWQK
PiA+IHNlbnNpYmxlLgo+ID4gCj4gCj4gSG1tLCB0aGUgbmV3ZXN0IGxpbnV4LW5leHQgdGFnIHdo
aWNoIEkgdXNlZCBpcyBuZXh0LTIwMjYxMTA1LCBhbmQgSGVpa28ncyAKPiB0cmVlIGxhc3QgdXBk
YXRlZCBkYXRlIGlzMTEwNi4gSSdsbCBnaXZlIGl0IGEgdHJ5IG9uIEhlaWtvJ3MgdHJlZS4KPiAK
PiBBbmQgSSdtIHVzaW5nIG1haW5saW5lIFUtQm9vdCwgd2hpY2ggb2J0YWluZWQgZnJvbSB0aGUg
bGF0ZXN0IG5pZ2h0bHkgYnVpbGQ6Cj4gaHR0cHM6Ly9naXRsYWIuY29sbGFib3JhLmNvbS9oYXJk
d2FyZS1lbmFibGVtZW50L3JvY2tjaGlwLTM1ODgvZGViaWFuLWltYWdlLXJlY2lwZXMuCj4gCj4g
VGhlIGJhY2tsaWdodCB3b3JraW5nIGNvcnJlY3RseSwgYW5kIHRoZSBEQ1MgY29tbWFuZCBoYXMg
YmVlbiBzZW50LCBidXQgbm90aGluZyBkaXNwbGF5Lgo+IFBlcmhhcHMgSSBzaG91bGQgbG9vayBl
bHNld2hlcmUuCgpJIHdvdWxkIGFzc3VtZSBpdCBjb3VsZCBiZSB0aGUgU1BMTCAoYWdhaW4pLgoK
SS5lLiBhIHJlY2VudCB1LWJvb3QgY2hhbmdlIGJyb2tlIHRoZSBTUEwtYmFzZWQgZm9yY2VkIGNs
b2NrIGluaXQgYW5kIEpvbmFzCmZpeGVkIHRoYXQgaW4gWzBdLiBIYWQgdGhlIGJsYWNrIGRpc3Bs
YXkgYWdhaW4gcmVjZW50bHkgdG9vLgoKQW5kIGl0IHNlZW1zIGl0IGhhc24ndCBiZWVuIG1lcmdl
ZCB5ZXQuCgoKSGVpa28KCgpbMF0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvdS1ib290LzIwMjYw
ODA0MDAyNjQzLjIzMDg1MTUtMy1qb25hc0Brd2lib28uc2UvCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
