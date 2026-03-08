Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A0E3EA853D
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Mar 2026 18:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9oVqDIY0OClD/CaeGIiRyUMcxKeaLl2mxd5zK6cZYqs=; b=FxzLPzUzPibQ19
	crS5A9TqciDHdrhirUU4hTSuO/fZ/IWXwM/qhRW8zUIB76uOO/KEPm6Hi4U8iB4LnWYSIGLexBKwn
	cEOiA20VjdAWFVrVS/7xjzjAhVs1jyzYOLMaxoxpugzhjbcuQewrV+raU58tDJLR2pPKKNSdajYNk
	NapY2/RqLbvOPu0dp5QpIwdCb7DLoMxoqLxhyZ8oSzrSuAosyC9PmcA2X/4kCJLcRz/vaPk1MhQ9Z
	iEqxlxw2N0zvEfe53t6UzRledjn1KvB0OIDFtDTYNsZDqpaQTikuKnyQkK4wYUvBhAO/karNAM2+h
	Fm4tl1ywm1A4py7CNDIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzIQD-00000006Efs-2DbB;
	Sun, 08 Mar 2026 18:00:09 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzIQ7-00000006Edn-3TDG;
	Sun, 08 Mar 2026 18:00:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=COX7CpTb/27v5+RAJjpmWzEICJkLOwS/U54SdgdwvJ0=; b=dT
	Mvt5zreya8sYFTIdBVn+u2Cr+TZpKI2sHjC2eOz50+u7Z9bcgWi9rBmOKKmEgNT9xNvbN2WV71V+Y
	MTg2bknSvJlEcZlhzC8/RD+LOfjFVJwRy0Suiwp0bqKJXu0GL9C9yJfORHH9scM7YznnM23vGIC03
	WMxQMzpeato1q7o=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vzIPq-00Ajv8-GI; Sun, 08 Mar 2026 18:59:46 +0100
Date: Sun, 8 Mar 2026 18:59:46 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: =?utf-8?B?5ZC05Yeh?= <12321260@zju.edu.cn>
Cc: netdev@vger.kernel.org, davem@davemloft.net, kuba@kernel.org,
	edumazet@google.com, pabeni@redhat.com, andrew+netdev@lunn.ch,
	heiko@sntech.de, romain.perier@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org
Subject: Re: Re: [PATCH] net: ethernet: arc: fix use-after-free in probe
 error path
Message-ID: <1bb942f0-d512-4834-bf01-49f9a9d7fd77@lunn.ch>
References: <20260304025303.145493-1-fanwu01@zju.edu.cn>
 <b6ac1471-e33a-41d3-9e67-e6463612f05b@lunn.ch>
 <54c76f66.7eea7.19ccca93975.Coremail.12321260@zju.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54c76f66.7eea7.19ccca93975.Coremail.12321260@zju.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260308_110003_871549_AF835207 
X-CRM114-Status: GOOD (  14.95  )
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

T24gU3VuLCBNYXIgMDgsIDIwMjYgYXQgMDQ6NTY6MDhQTSArMDgwMCwg5ZC05YehIHdyb3RlOgo+
IFlvdSBhcmUgcmlnaHQgdGhhdCBub3JtYWwgZGV2aWNlIGludGVycnVwdCBnZW5lcmF0aW9uIGlz
IGVuYWJsZWQgaW4gYXJjX2VtYWNfb3BlbigpIHZpYSBSX0VOQUJMRSwgc28gd2UgY2VydGFpbmx5
IGRvbid0IGV4cGVjdCByZWd1bGFyIFJYL1RYIHRyYWZmaWMgaW50ZXJydXB0cyBkdXJpbmcgcHJv
YmUuCj4gCj4gTXkgbWFpbiBjb25jZXJuIGhlcmUgaXMgdGhlIGxpZmV0aW1lIG9yZGVyaW5nIGlu
IHRoZSBlcnJvciBwYXRoLiBhcmNfZW1hY19wcm9iZSgpIGluc3RhbGxzIHRoZSBJUlEgaGFuZGxl
ciB2aWEgZGV2bV9yZXF1ZXN0X2lycSguLi4sIG5kZXYpLCBidXQgaWYgZW1hY19yb2NrY2hpcF9w
cm9iZSgpIGZhaWxzIGxhdGVyLCBpdCBleHBsaWNpdGx5IGNhbGxzIGZyZWVfbmV0ZGV2KG5kZXYp
IHdlbGwgYmVmb3JlIHRoZSBkZXZyZXMgY2xlYW51cCByb3V0aW5lIHJ1bnMuCj4gCj4gSW4gdGhh
dCBzcGVjaWZpYyBnYXAsIGlmIGFuIElSUSBpcyBzb21laG93IGRlbGl2ZXJlZOKAlHBlcmhhcHMg
ZnJvbSBhIHBlbmRpbmcvbGF0Y2hlZCBsaW5lIGxlZnQgYnkgdGhlIGZpcm13YXJlL2Jvb3Rsb2Fk
ZXIsIG9yIG90aGVyIG5vbi10cmFmZmljIGFub21hbGllc+KAlGFyY19lbWFjX2ludHIoKSB3aWxs
IGltbWVkaWF0ZWx5IGRlcmVmZXJlbmNlIGRldl9pZCBhcyBhIHN0cnVjdCBuZXRfZGV2aWNlICou
IFNpbmNlIG5kZXYgaGFzIGFscmVhZHkgYmVlbiBtYW51YWxseSBmcmVlZCwgdGhpcyByZXN1bHRz
IGluIGEgVUFGLgo+IAo+IFNvIHdoaWxlIEkgY29tcGxldGVseSBhZ3JlZSB0aGlzIGlzbid0IGEg
bm9ybWFsIHByZS1vcGVuIHRyYWZmaWMgcGF0aCwgdGhlIG1peGVkIGxpZmV0aW1lIG1hbmFnZW1l
bnQgKG1hbmFnZWQgSVJRIHZzLiBtYW51YWwgbmV0ZGV2IGZyZWUpIHN0aWxsIGNyZWF0ZXMgYSBy
ZWFsIHJhY2Ugd2luZG93Lgo+IAo+IFN3aXRjaGluZyB0byBkZXZtX2FsbG9jX2V0aGVyZGV2KCkg
cHV0cyBib3RoIHJlc291cmNlcyB1bmRlciBkZXZyZXMgbWFuYWdlbWVudCwgcGVybWFuZW50bHkg
Zml4aW5nIHRoaXMgdGVhcmRvd24gb3JkZXJpbmcgaXNzdWUuIEkgd291bGQgYmUgaGFwcHkgdG8g
c2VuZCBhIHYyIGFuZCByZXdvcmQgdGhlIGNvbW1pdCBsb2cgdG8gZW1waGFzaXplIHRoaXMgYXMg
YSBwb3RlbnRpYWwgcmFjZSB3aW5kb3cgYW5kIGEgaGFyZGVuaW5nIGZpeC4gTGV0IG1lIGtub3cg
d2hhdCB5b3UgdGhpbmsuCgpodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL2xhdGVzdC9w
cm9jZXNzL21haW50YWluZXItbmV0ZGV2Lmh0bWwjY2xlYW4tdXAtcGF0Y2hlcwoKICAxLjcuNC4g
Q2xlYW4tdXAgcGF0Y2hlc8K2CgogIE5ldGRldiBkaXNjb3VyYWdlcyBwYXRjaGVzIHdoaWNoIHBl
cmZvcm0gc2ltcGxlIGNsZWFuLXVwcywgd2hpY2ggYXJlCiAgbm90IGluIHRoZSBjb250ZXh0IG9m
IG90aGVyIHdvcmsuIEZvciBleGFtcGxlOgoKICBBZGRyZXNzaW5nIGNoZWNrcGF0Y2gucGwsIGFu
ZCBvdGhlciB0cml2aWFsIGNvZGluZyBzdHlsZSB3YXJuaW5ncwoKICBBZGRyZXNzaW5nIExvY2Fs
IHZhcmlhYmxlIG9yZGVyaW5nIGlzc3VlcwoKICBDb252ZXJzaW9ucyB0byBkZXZpY2UtbWFuYWdl
ZCBBUElzIChkZXZtXyBoZWxwZXJzKQoKICBUaGlzIGlzIGJlY2F1c2UgaXQgaXMgZmVsdCB0aGF0
IHRoZSBjaHVybiB0aGF0IHN1Y2ggY2hhbmdlcyBwcm9kdWNlCiAgY29tZXMgYXQgYSBncmVhdGVy
IGNvc3QgdGhhbiB0aGUgdmFsdWUgb2Ygc3VjaCBjbGVhbi11cHMuCgoKU29tZSBwZXJjZW50YWdl
IG9mIGRldm1fIGNvbnZlcnNhdGlvbiBwYXRjaGVzIGJyZWFrIGRyaXZlcnMuIFdlClJldmlld2Vy
cyBuZWVkIHRvIGxvb2sgYXQgYWxsIHN1Y2ggcGF0Y2hlcyBhbmQgdHJ5IHRvIGRldGVjdCBzdWNo
CmJyZWFrYWdlLiBJbiBnZW5lcmFsLCBpdCBpcyBub3Igd29ydGggaXQuIEhlbmNlIHdlIGdlbmVy
YWxseSByZWplY3QKcGF0Y2hlcyBsaWtlIHRoaXMuCgpUaGlzIGlzIGhvd2V2ZXIgc2xpZ2h0bHkg
ZGlmZmVyZW50LiBJdCBsb29rcyBsaWtlIHRoaXMgZHJpdmVyIHdhcwpicm9rZW4gZnJvbSB0aGUg
YmVnaW5uaW5nLiBUaGUgcmFjZSB5b3UgcG9pbnQgb3V0IGhhcyBhbHdheXMgYmVlbgp0aGVyZS4g
VGhhdCBpcyBzb21ldGhpbmcgd29ydGggcG9pbnRpbmcgb3V0IGluIHRoZSBjb21taXQgbWVzc2Fn
ZS4KCkJ1dCB0YWtlIGEgc3RlcCBiYWNrLiBUaGluayBhYm91dCBpbnRlcnJ1cHQgaGFuZGxpbmcg
aW4gZ2VuZXJhbC4gRG8KeW91IHRoaW5rIGl0IGlzIGdvb2QgcHJhY3RpY2UgdG8gcmVxdWVzdCBp
bnRlcnJ1cHRzIGJlZm9yZSBjb25maWd1cmluZwp0aGUgaGFyZHdhcmUgYWJvdXQgd2hhdCBpbnRl
cnJ1cHRzIGl0IHdpbGwgZGVsaXZlcj8KCklmIHRoZSBkcml2ZXIgd3JvdGUgdG8gUl9FTkFCTEUg
aW4gcHJvYmUsIGJlZm9yZSByZXF1ZXN0aW5nIHRoZQppbnRlcnJ1cHQsIGVuYWJsZWQgdGhlIG5l
ZWRlZCBpbnRlcnJ1cHRzIGluIG9wZW4sIGRpc2FibGVkIHRoZQppbnRlcnJ1cHRzIGluIGNsb3Nl
LCB0aGUgZGlmZmVyZW50IGxpZmV0aW1lcyB3b3VsZCBub3QgbWF0dGVyLgoKU28sIGZvciBzdGFi
bGUsIHBsZWFzZSBhZGQgY29kZSB0byBwdXQgaW50ZXJydXB0cyBpbnRvIGEgd2VsbCBrbm93bgpz
dGF0ZSBiZWZvcmUgcmVxdWVzdGluZyB0aGUgaW50ZXJydXB0LiBQbGVhc2UgdXNlIHRoZSBuZXQg
dHJlZSwgYW5kCmFkZCBhIEZpeGVzOiB0YWcuCgpZb3UgY2FuIHN1Ym1pdCB0aGlzIHBhdGNoIHRv
IG5ldC1uZXh0LCBidXQgd2UgbWlnaHQgcmVqZWN0IGl0LCBiZWNhdXNlCm9mIHRoZSBwb2xpY3ku
IElmIHlvdSBhcmUgd29ya2luZyBvbiB0aGlzIGRyaXZlciwgYWRkaW5nIG90aGVyCmZlYXR1cmVz
LCB0aGlzIHBhdGNoIGlzIHBhcnQgb2YgYSBiaWdnZXIgcGF0Y2hzZXQsIHdlIGFyZSBtb3JlIGxp
a2VseQp0byBhY2NlcHQgaXQuCgogICAgQW5kcmV3CgotLS0KcHctYm90OiBjcgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
