Return-Path: <SRS0=2Xhb=GY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37A3DC433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 17:22:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D992723A57
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 17:22:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D992723A57
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oTZQxk9xPesVmmtwom+hf7oE8jGkW9VSglRkrmOrVBY=; b=QvRID8wEmY7fOisTgnorFX+aK
	yBpdsQTpzClSr0H9IRzmIFEapiK1UikzFxBkNoHX3EiagKNDjQUr2zJ8W4Xy/0WLdWu77BQa3PLuN
	Aw7NJb/iNOq7WQaR43dEg+wm3OmCTjSi9NqCHM3uzLVogrBjD2hVzqd/ETFK7BPeOW7Zzr1Ui/8vq
	9OxV9CltDjCQ0wMVSNoVsrwLonGkjUh4oDW2hTIx22z1WK3/3Q5uoz1k2Ibqa32GJQszu7xmrDAqX
	X707QKauK0HSOOG/cMdra3WmsjV1bDoONQSKguTiEWzwo90a+082yrIne1EUMuwxTsLPkqkzlVeJ8
	h734Uv6UA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2df4-0002Fd-HB; Thu, 21 Jan 2021 17:22:22 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2df2-0002Ef-70
 for linux-rockchip@lists.infradead.org; Thu, 21 Jan 2021 17:22:20 +0000
Received: from [IPv6:2804:214:8590:5e63:127e:7b33:24d:fd7d] (unknown
 [IPv6:2804:214:8590:5e63:127e:7b33:24d:fd7d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A06021F45F74;
 Thu, 21 Jan 2021 17:22:14 +0000 (GMT)
Subject: Re: [PATCH v8 4/6] media: rockchip: rkisp1: reduce number of
 histogram grid elements in uapi
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com,
 hverkuil@xs4all.nl, sakari.ailus@linux.intel.com
References: <20210121144407.9045-1-dafna.hirschfeld@collabora.com>
 <20210121144407.9045-5-dafna.hirschfeld@collabora.com>
 <c9d0ac1b-2cb7-a5b6-aa97-1510c44404c1@collabora.com>
 <2974513.zE8UqtGg2D@diego>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <f1d04d96-37b2-c054-0a89-c5f00a7ff723@collabora.com>
Date: Thu, 21 Jan 2021 14:22:10 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <2974513.zE8UqtGg2D@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210121_122220_379530_ADEE8E60 
X-CRM114-Status: GOOD (  20.16  )
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
Cc: mchehab@kernel.org, dafna3@gmail.com, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 ezequiel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpPbiAxLzIxLzIxIDI6MTIgUE0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEhpIEhlbGVuLAo+
IAo+IEFtIERvbm5lcnN0YWcsIDIxLiBKYW51YXIgMjAyMSwgMTg6MDQ6NDkgQ0VUIHNjaHJpZWIg
SGVsZW4gS29pa2U6Cj4+IEhpIERhZm5hLAo+Pgo+PiBPbiAxLzIxLzIxIDExOjQ0IEFNLCBEYWZu
YSBIaXJzY2hmZWxkIHdyb3RlOgo+Pj4gRnJvbTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvLnN0dWVi
bmVyQHRoZW9icm9tYS1zeXN0ZW1zLmNvbT4KPj4+Cj4+PiBUaGUgdWFwaSByaWdodCBub3cgc3Bl
Y2lmaWVzIGFuIGFycmF5IHNpemUgb2YgMjggYnV0IHRoZSBhY3R1YWwgbnVtYmVyCj4+PiBvZiBl
bGVtZW50cyBpcyBvbmx5IDI1IHdpdGggdGhlIGxhc3QgMyBiZWluZyB1bnVzZWQuCj4+Pgo+Pj4g
UmVkdWNlIHRoZSBhcnJheSBzaXplIHRvIHRoZSBjb3JyZWN0IG51bWJlciBvZiBlbGVtZW50cyBh
bmQgY2hhbmdlCj4+PiB0aGUgcGFyYW1zIGNvZGUgdG8gaXRlcmF0ZSB0aGUgYXJyYXkgMjUgdGlt
ZXMuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvLnN0dWVibmVy
QHRoZW9icm9tYS1zeXN0ZW1zLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IERhZm5hIEhpcnNjaGZl
bGQgPGRhZm5hLmhpcnNjaGZlbGRAY29sbGFib3JhLmNvbT4KPj4+IC0tLQo+Pj4gIGRyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1wYXJhbXMuYyB8IDMgKystCj4+
PiAgaW5jbHVkZS91YXBpL2xpbnV4L3JraXNwMS1jb25maWcuaCAgICAgICAgICAgICAgICAgICAg
IHwgMyArLS0KPj4+ICAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlv
bnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9ya2lzcDEvcmtpc3AxLXBhcmFtcy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9ya2lzcDEvcmtpc3AxLXBhcmFtcy5jCj4+PiBpbmRleCA2YWY0ZDU1MWZmYjUuLjAyMTkzOTQ2
NmIyNCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtp
c3AxL3JraXNwMS1wYXJhbXMuYwo+Pj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2Nr
Y2hpcC9ya2lzcDEvcmtpc3AxLXBhcmFtcy5jCj4+PiBAQCAtNTg5LDcgKzU4OSw2IEBAIHN0YXRp
YyB2b2lkIHJraXNwMV9oc3RfY29uZmlnKHN0cnVjdCBya2lzcDFfcGFyYW1zICpwYXJhbXMsCj4+
PiAgCQlSS0lTUDFfQ0lGX0lTUF9ISVNUX1dFSUdIVF8yMlRPMDMsCj4+PiAgCQlSS0lTUDFfQ0lG
X0lTUF9ISVNUX1dFSUdIVF8xM1RPNDMsCj4+PiAgCQlSS0lTUDFfQ0lGX0lTUF9ISVNUX1dFSUdI
VF8wNFRPMzQsCj4+PiAtCQlSS0lTUDFfQ0lGX0lTUF9ISVNUX1dFSUdIVF80NCwKPj4+ICAJfTsK
Pj4+ICAJY29uc3QgdTggKndlaWdodDsKPj4+ICAJdW5zaWduZWQgaW50IGk7Cj4+PiBAQCAtNjIy
LDYgKzYyMSw4IEBAIHN0YXRpYyB2b2lkIHJraXNwMV9oc3RfY29uZmlnKHN0cnVjdCBya2lzcDFf
cGFyYW1zICpwYXJhbXMsCj4+PiAgCQkJCQkJCSAgICB3ZWlnaHRbMl0sCj4+PiAgCQkJCQkJCSAg
ICB3ZWlnaHRbM10pLAo+Pj4gIAkJCQkgaGlzdF93ZWlnaHRfcmVnc1tpXSk7Cj4+PiArCj4+PiAr
CXJraXNwMV93cml0ZShwYXJhbXMtPnJraXNwMSwgd2VpZ2h0WzBdICYgMHgxRiwgUktJU1AxX0NJ
Rl9JU1BfSElTVF9XRUlHSFRfNDQpOwo+Pgo+PiBJIGp1c3Qgbm90aWNlZCB0aGF0IHRoZSBkZWZh
dWx0IHZhbHVlIHRvIGFyZy0+aGlzdF93ZWlnaHQgd2FzOgo+Pgo+PiAJbWVtc2V0KGhzdC5oaXN0
X3dlaWdodCwgMHgwMSwgc2l6ZW9mKGhzdC5oaXN0X3dlaWdodCkpOwo+Pgo+PiBTaG91bGRuJ3Qg
dGhlIHZhbHVlIGJlIFJLSVNQMV9DSUZfSVNQX0hJU1RfV0VJR0hUX1NFVCh3ZWlnaHRbMF0sIDB4
MDEsIDB4MDEsIDB4MDEpID8KPj4gT3IgYW0gSSBtaXNzaW5nIHNvbWV0aGluZz8KPiAKPiBUaGUg
bGFzdCByZWdpc3RlciBvbmx5IGhhcyB0aGF0IG9uZSB2YWx1ZSBmcm9tIHdlaWdodFsyNF07Cj4g
Cj4gSS5lLiBiZWZvcmUgd2Ugd2VyZSB3cml0aW5nIHRoZSA0IHZhbHVlcyBpbnRvIHRoYXQgbGFz
dCByZWdpc3RlciBhcyB3ZWxsCj4gZnJvbSBpbmRpY2VzIDI0LCAyNSwgMjYsIDI3IC4uLiBoZW5j
ZSB0aGUgMyB1bnVzZWQgdmFsdWVzIGluIHRoZSB3ZWlnaHQgYXJyYXkuCj4gCj4gQnV0IHRoYXQg
d2FzIG1lcmVseSBhIGNydXRjaCB0byBtYWtlIHRoYXQgZml0IGludG8gdGhlIHdyaXRlIGxvb3Au
CgpyaWdodCwgbGd0bSwgdGhhbmsgeW91IGFuZCBEYWZuYSBmb3Igd29ya2luZyBvbiB0aGlzLgoK
Rm9yIHRoZSB3aG9sZSBzZXJpZXM6CgpBY2tlZC1ieTogSGVsZW4gS29pa2UgPGhlbGVuLmtvaWtl
QGNvbGxhYm9yYS5jb20+CgpSZWdhcmRzLApIZWxlbgoKPiAKPiAKPiBIZWlrbwo+IAo+IAo+Pj4g
IH0KPj4+ICAKPj4+ICBzdGF0aWMgdm9pZAo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9s
aW51eC9ya2lzcDEtY29uZmlnLmggYi9pbmNsdWRlL3VhcGkvbGludXgvcmtpc3AxLWNvbmZpZy5o
Cj4+PiBpbmRleCAyNGYwNWQ2ZDI1OGYuLjM1YWE4MmQ1ZjZkZCAxMDA2NDQKPj4+IC0tLSBhL2lu
Y2x1ZGUvdWFwaS9saW51eC9ya2lzcDEtY29uZmlnLmgKPj4+ICsrKyBiL2luY2x1ZGUvdWFwaS9s
aW51eC9ya2lzcDEtY29uZmlnLmgKPj4+IEBAIC0xMDIsOCArMTAyLDcgQEAKPj4+ICAvKgo+Pj4g
ICAqIEhpc3RvZ3JhbSBjYWxjdWxhdGlvbgo+Pj4gICAqLwo+Pj4gLS8qIExhc3QgMyB2YWx1ZXMg
dW51c2VkLiAqLwo+Pj4gLSNkZWZpbmUgUktJU1AxX0NJRl9JU1BfSElTVE9HUkFNX1dFSUdIVF9H
UklEU19TSVpFIDI4Cj4+PiArI2RlZmluZSBSS0lTUDFfQ0lGX0lTUF9ISVNUT0dSQU1fV0VJR0hU
X0dSSURTX1NJWkUgMjUKPj4+ICAKPj4+ICAvKgo+Pj4gICAqIERlZmVjdCBQaXhlbCBDbHVzdGVy
IENvcnJlY3Rpb24KPj4+Cj4+Cj4gCj4gCj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
