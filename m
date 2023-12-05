Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A967C46CA3
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 11:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GE6I0kzRLcpA8fV0mXYciMlar2e5t8JgMMzin7Ak8kw=; b=PcqWAysGtV4i1U
	EsK5TcO5iQEZyJKKBgac6l1gNi2dfqZI7GJZmwKtYR8+SDVziF3HHjovjRnl1vRwa2SDvJRgaccQE
	PtE3bEEgW5t8mId8mGBmj36Dp5hjm1vVIWtOXb4m+wRKH1PTP5UmG0uq7muvsXWF2xN3tlrK98/0O
	dm0pIbv56gaEdBmDt93c4Kgff5MBR8FhHwN3SiOvg3pfTnvF+yfKQmm/6GxTFup7kztaDYGR1TjxL
	oR1W6AjzKTuqyX/8q6D+1pMSUyAYv4HkCpqyZKEpoae2QuBAVGMsBsXFKrk9XysDAtva9CY9Q0eer
	43+oDkDnn1dewC3c46Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rATvw-007G4j-13;
	Tue, 05 Dec 2023 11:49:48 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rATvt-007G04-2Y;
	Tue, 05 Dec 2023 11:49:47 +0000
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-2866e4ac34bso3018069a91.1;
        Tue, 05 Dec 2023 03:49:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701776982; x=1702381782; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AZT8TEnCg17hGz9D9aoXrHaxFJW7dZSsSL0dlLW7alA=;
        b=CcdTMkgwALwGxKVHYFAYJT54M1mQU8z1jxwssqoRViK7HalPTXJLi/MihZdf3HaZfZ
         5wTOjM4ld0LM3i2NAPIvgVxTX+pGeTYBCb2l3RoJrDfsM8EhnkkFWMYpFmXOOQ1MLy9b
         0G4ibcl1qDRclO6sS4OI8pdd3RFIIX+QqE/EyB1FZJDT9pHti9A9yfpdPD5trQaJGhEn
         tFjg22zYoYRjnDBKB+7jpxzz/RoqjduL5Odn6FYL9s0swlw3Rsc+5owwwv79qTvwm9N5
         iLXDsW+g1c2dIFaJZKeZM97RbxuptD8/nsiezNUbf7anZYbdQhxyA9rL345Pl10cOEFX
         g+jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701776982; x=1702381782;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AZT8TEnCg17hGz9D9aoXrHaxFJW7dZSsSL0dlLW7alA=;
        b=tl5kVjrcyFrf6j6qro5TO3kfackIvD4pPAbnRwVe1urrg4qJw0UXPS1e5t0tbcC72Y
         UC3s2fDpCG1Zs16SkCop2rCXeK2hBdKLwyV2ja3McsZpU5z13+TaHPh+E8WjIG17VBkl
         uyC6bIMtP9e/Xvc9OwF1Qmd1D8UFNTnUNb0n7ai6U4Yce9MCn4Fgui3MrVzdHbaoopmn
         MBYL4WyagJjf7d+WE9qx8b/AkMLn4jZxnvEYhnxNjWCmc9K3Tlo/IwZqnyjztCE7mOXX
         TR810d/4F//QvdJHRexPdC73H2l0Yi9JHVjSHVENQMGfnAY2zghTpwWvOmVnJpA8oXwO
         a/rg==
X-Gm-Message-State: AOJu0YwXUX2pVPceVKRRshA4vmljy/rj0HvZ9V/27HTNMPHd0sBVuVQi
	1Oc5nRwcEw0XVcyFA8+QXR5GsynI7qKg6DZMcjcfCQEtpHA=
X-Google-Smtp-Source: AGHT+IG903dRK3fpmzorknhqflxmGtrEN3N6ciA43936wmipN8Wx0WOb2f34obKGBajrjmRKTcYOuA9io5J79XOeZ40=
X-Received: by 2002:a17:90b:3912:b0:285:fc67:6164 with SMTP id
 ob18-20020a17090b391200b00285fc676164mr1032342pjb.5.1701776981534; Tue, 05
 Dec 2023 03:49:41 -0800 (PST)
MIME-Version: 1.0
References: <20231205-rkisp-irq-fix-v1-0-f4045c74ba45@ideasonboard.com>
 <20231205-rkisp-irq-fix-v1-3-f4045c74ba45@ideasonboard.com>
 <20231205082016.GA17394@pendragon.ideasonboard.com> <9b28dcf7-c9a0-4d68-9197-cdcdd9f0393b@ideasonboard.com>
In-Reply-To: <9b28dcf7-c9a0-4d68-9197-cdcdd9f0393b@ideasonboard.com>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 5 Dec 2023 05:49:30 -0600
Message-ID: <CAHCN7xKdCixYtFE=NrfLiLNjZrV5Xrg27fMMTrdA_7-Tg9Ujfg@mail.gmail.com>
Subject: Re: [PATCH 3/4] media: rkisp1: Fix IRQ handling due to shared interrupts
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Dafna Hirschfeld <dafna@fastmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>, 
	Alexander Stein <alexander.stein@ew.tq-group.com>, kieran.bingham@ideasonboard.com, 
	umang.jain@ideasonboard.com, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_034945_840389_A55E6E17 
X-CRM114-Status: GOOD (  36.09  )
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

T24gVHVlLCBEZWMgNSwgMjAyMyBhdCAyOjI34oCvQU0gVG9taSBWYWxrZWluZW4KPHRvbWkudmFs
a2VpbmVuQGlkZWFzb25ib2FyZC5jb20+IHdyb3RlOgo+Cj4gT24gMDUvMTIvMjAyMyAxMDoyMCwg
TGF1cmVudCBQaW5jaGFydCB3cm90ZToKPiA+IEhpIFRvbWksCj4gPgo+ID4gVGhhbmsgeW91IGZv
ciB0aGUgcGF0Y2guCj4gPgo+ID4gT24gVHVlLCBEZWMgMDUsIDIwMjMgYXQgMTA6MDk6MzRBTSAr
MDIwMCwgVG9taSBWYWxrZWluZW4gd3JvdGU6Cj4gPj4gVGhlIGRyaXZlciByZXF1ZXN0cyB0aGUg
aW50ZXJydXB0cyBhcyBJUlFGX1NIQVJFRCwgc28gdGhlIGludGVycnVwdAo+ID4+IGhhbmRsZXJz
IGNhbiBiZSBjYWxsZWQgYXQgYW55IHRpbWUuIElmIHN1Y2ggYSBjYWxsIGhhcHBlbnMgd2hpbGUg
dGhlIElTUAo+ID4+IGlzIHBvd2VyZWQgZG93biwgdGhlIFNvQyB3aWxsIGhhbmcgYXMgdGhlIGRy
aXZlciB0cmllcyB0byBhY2Nlc3MgdGhlCj4gPj4gSVNQIHJlZ2lzdGVycy4KPiA+Cj4gPiBJcyBJ
UlFGX1NIQVJFRCBhY3R1YWxseSBuZWVkZWQgPwo+Cj4gSSBkb24ndCBoYXZlIGFueSBhbnN3ZXIg
dG8gdGhhdCwgYnV0IGl0IHNlZW1zIHRvIGhhdmUgYWx3YXlzIGJlZW4gdGhlcmUuCj4gRHJvcHBp
bmcgaXQgd291bGQgc2ltcGxpZnkgdGhlIGNvZGUsIGJ1dCB3ZSBjYW4gb25seSBkbyB0aGF0IGlm
IHdlIGFyZQo+IHN1cmUgYWxsIHRoZSBwbGF0Zm9ybXMgdGhlIElTUCBpcyB1c2VkIG9uIG9yIHdp
bGwgYmUgdXNlZCBvbiB3b24ndCBzaGFyZQo+IHRoZSBpbnRlcnJ1cHQuCgpJIGNhbid0IHNwZWFr
IGZvciB0aGUgUm9ja2NoaXAsIGJ1dCBmcm9tIHdoYXQgSSBjYW4gc2VlLCB0aGUgaW14OG1wCmhh
cyBtdWx0aXBsZSBjYXVzZXMgZm9yIEludGVycnVwdCA3NCBhbmQgIDc1LCBidXQgdGhleSBhbGwg
YXBwZWFyIHRvCmJlIElTUDEgYW5kIElTUDIgcmVsYXRlZC4KCmFkYW0KPgo+ICAgVG9taQo+Cj4g
Pj4gRml4IHRoaXMgYnkgYWRkaW5nIGEgbmV3IGZpZWxkLCAnaXJxc19lbmFibGVkJywgd2hpY2gg
aXMgdXNlZCB0byBiYWlsCj4gPj4gb3V0IGZyb20gdGhlIGludGVycnVwdCBoYW5kbGVyIHdoZW4g
dGhlIElTUCBpcyBub3Qgb3BlcmF0aW9uYWwuCj4gPj4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBUb21p
IFZhbGtlaW5lbiA8dG9taS52YWxrZWluZW5AaWRlYXNvbmJvYXJkLmNvbT4KPiA+PiAtLS0KPiA+
PiAgIC4uLi9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNhcHR1cmUuYyB8
ICAzICsrKwo+ID4+ICAgLi4uL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEt
Y29tbW9uLmggIHwgIDIgKysKPiA+PiAgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAv
cmtpc3AxL3JraXNwMS1jc2kuYyB8ICAzICsrKwo+ID4+ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWRldi5jIHwgMjEgKysrKysrKysrKysrKysrKysrKysr
Cj4gPj4gICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtaXNw
LmMgfCAgMyArKysKPiA+PiAgIDUgZmlsZXMgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKQo+ID4+
Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3Ax
L3JraXNwMS1jYXB0dXJlLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNw
MS9ya2lzcDEtY2FwdHVyZS5jCj4gPj4gaW5kZXggYjUwYjA0NGQyMmFmLi5lOTIwNjc4OTdmMjgg
MTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEv
cmtpc3AxLWNhcHR1cmUuYwo+ID4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2No
aXAvcmtpc3AxL3JraXNwMS1jYXB0dXJlLmMKPiA+PiBAQCAtNzc5LDYgKzc3OSw5IEBAIGlycXJl
dHVybl90IHJraXNwMV9jYXB0dXJlX2lzcihpbnQgaXJxLCB2b2lkICpjdHgpCj4gPj4gICAgICB1
bnNpZ25lZCBpbnQgaTsKPiA+PiAgICAgIHUzMiBzdGF0dXM7Cj4gPj4KPiA+PiArICAgIGlmICgh
cmtpc3AxLT5pcnFzX2VuYWJsZWQpCj4gPj4gKyAgICAgICAgICAgIHJldHVybiBJUlFfTk9ORTsK
PiA+PiArCj4gPj4gICAgICBzdGF0dXMgPSBya2lzcDFfcmVhZChya2lzcDEsIFJLSVNQMV9DSUZf
TUlfTUlTKTsKPiA+PiAgICAgIGlmICghc3RhdHVzKQo+ID4+ICAgICAgICAgICAgICByZXR1cm4g
SVJRX05PTkU7Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2No
aXAvcmtpc3AxL3JraXNwMS1jb21tb24uaCBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2No
aXAvcmtpc3AxL3JraXNwMS1jb21tb24uaAo+ID4+IGluZGV4IGVjMjg5MDdkOTc4ZS4uN2Y5N2Zk
ZjZlMjRjIDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAv
cmtpc3AxL3JraXNwMS1jb21tb24uaAo+ID4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
cm9ja2NoaXAvcmtpc3AxL3JraXNwMS1jb21tb24uaAo+ID4+IEBAIC00NjUsNiArNDY1LDcgQEAg
c3RydWN0IHJraXNwMV9kZWJ1ZyB7Cj4gPj4gICAgKiBAZGVidWc6ICAgIGRlYnVnIHBhcmFtcyB0
byBiZSBleHBvc2VkIG9uIGRlYnVnZnMKPiA+PiAgICAqIEBpbmZvOiAgICAgdmVyc2lvbi1zcGVj
aWZpYyBJU1AgaW5mb3JtYXRpb24KPiA+PiAgICAqIEBpcnFzOiAgICAgICAgICBJUlEgbGluZSBu
dW1iZXJzCj4gPj4gKyAqIEBpcnFzX2VuYWJsZWQ6ICB0aGUgaGFyZHdhcmUgaXMgZW5hYmxlZCBh
bmQgY2FuIGNhdXNlIGludGVycnVwdHMKPiA+PiAgICAqLwo+ID4+ICAgc3RydWN0IHJraXNwMV9k
ZXZpY2Ugewo+ID4+ICAgICAgdm9pZCBfX2lvbWVtICpiYXNlX2FkZHI7Cj4gPj4gQEAgLTQ4OCw2
ICs0ODksNyBAQCBzdHJ1Y3Qgcmtpc3AxX2RldmljZSB7Cj4gPj4gICAgICBzdHJ1Y3Qgcmtpc3Ax
X2RlYnVnIGRlYnVnOwo+ID4+ICAgICAgY29uc3Qgc3RydWN0IHJraXNwMV9pbmZvICppbmZvOwo+
ID4+ICAgICAgaW50IGlycXNbUktJU1AxX05VTV9JUlFTXTsKPiA+PiArICAgIGJvb2wgaXJxc19l
bmFibGVkOwo+ID4+ICAgfTsKPiA+Pgo+ID4+ICAgLyoKPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNzaS5jIGIvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNzaS5jCj4gPj4gaW5kZXggNDdm
NDM1M2ExNzg0Li5mNmI1NDY1NGI0MzUgMTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNzaS5jCj4gPj4gKysrIGIvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNzaS5jCj4gPj4gQEAgLTE4NCw2
ICsxODQsOSBAQCBpcnFyZXR1cm5fdCBya2lzcDFfY3NpX2lzcihpbnQgaXJxLCB2b2lkICpjdHgp
Cj4gPj4gICAgICBzdHJ1Y3Qgcmtpc3AxX2RldmljZSAqcmtpc3AxID0gZGV2X2dldF9kcnZkYXRh
KGRldik7Cj4gPj4gICAgICB1MzIgdmFsLCBzdGF0dXM7Cj4gPj4KPiA+PiArICAgIGlmICghcmtp
c3AxLT5pcnFzX2VuYWJsZWQpCj4gPj4gKyAgICAgICAgICAgIHJldHVybiBJUlFfTk9ORTsKPiA+
PiArCj4gPj4gICAgICBzdGF0dXMgPSBya2lzcDFfcmVhZChya2lzcDEsIFJLSVNQMV9DSUZfTUlQ
SV9NSVMpOwo+ID4+ICAgICAgaWYgKCFzdGF0dXMpCj4gPj4gICAgICAgICAgICAgIHJldHVybiBJ
UlFfTk9ORTsKPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9ya2lzcDEvcmtpc3AxLWRldi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9y
a2lzcDEvcmtpc3AxLWRldi5jCj4gPj4gaW5kZXggMWQ2MGY0YjhiZDA5Li5mYmUwM2Y3ODY0ZTMg
MTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEv
cmtpc3AxLWRldi5jCj4gPj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9y
a2lzcDEvcmtpc3AxLWRldi5jCj4gPj4gQEAgLTMwNiw2ICszMDYsMjMgQEAgc3RhdGljIGludCBf
X21heWJlX3VudXNlZCBya2lzcDFfcnVudGltZV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikK
PiA+PiAgIHsKPiA+PiAgICAgIHN0cnVjdCBya2lzcDFfZGV2aWNlICpya2lzcDEgPSBkZXZfZ2V0
X2RydmRhdGEoZGV2KTsKPiA+Pgo+ID4+ICsgICAgcmtpc3AxLT5pcnFzX2VuYWJsZWQgPSBmYWxz
ZTsKPiA+PiArICAgIC8qIE1ha2Ugc3VyZSB0aGUgSVJRIGhhbmRsZXIgd2lsbCBzZWUgdGhlIGFi
b3ZlICovCj4gPj4gKyAgICBtYigpOwo+ID4+ICsKPiA+PiArICAgIC8qCj4gPj4gKyAgICAgKiBX
YWl0IHVudGlsIGFueSBydW5uaW5nIElSUSBoYW5kbGVyIGhhcyByZXR1cm5lZC4gVGhlIElSUSBo
YW5kbGVyCj4gPj4gKyAgICAgKiBtYXkgZ2V0IGNhbGxlZCBldmVuIGFmdGVyIHRoaXMgKGFzIGl0
J3MgYSBzaGFyZWQgaW50ZXJydXB0IGxpbmUpCj4gPj4gKyAgICAgKiBidXQgdGhlICdpcnFzX2Vu
YWJsZWQnIGZsYWcgd2lsbCBtYWtlIHRoZSBoYW5kbGVyIHJldHVybiBpbW1lZGlhdGVseS4KPiA+
PiArICAgICAqLwo+ID4+ICsgICAgZm9yICh1bnNpZ25lZCBpbnQgaSA9IDA7IGkgPCBSS0lTUDFf
TlVNX0lSUVM7ICsraSkgewo+ID4+ICsgICAgICAgICAgICBpZiAocmtpc3AxLT5pcnFzW2ldID09
IC0xKQo+ID4+ICsgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ID4+ICsKPiA+PiArICAg
ICAgICAgICAgaWYgKGkgPT0gMCB8fCBya2lzcDEtPmlycXNbaSAtIDFdICE9IHJraXNwMS0+aXJx
c1tpXSkKPiA+PiArICAgICAgICAgICAgICAgICAgICBzeW5jaHJvbml6ZV9pcnEocmtpc3AxLT5p
cnFzW2ldKTsKPiA+PiArICAgIH0KPiA+PiArCj4gPj4gICAgICBjbGtfYnVsa19kaXNhYmxlX3Vu
cHJlcGFyZShya2lzcDEtPmNsa19zaXplLCBya2lzcDEtPmNsa3MpOwo+ID4+ICAgICAgcmV0dXJu
IHBpbmN0cmxfcG1fc2VsZWN0X3NsZWVwX3N0YXRlKGRldik7Cj4gPj4gICB9Cj4gPj4gQEAgLTMy
Miw2ICszMzksMTAgQEAgc3RhdGljIGludCBfX21heWJlX3VudXNlZCBya2lzcDFfcnVudGltZV9y
ZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+ID4+ICAgICAgaWYgKHJldCkKPiA+PiAgICAgICAg
ICAgICAgcmV0dXJuIHJldDsKPiA+Pgo+ID4+ICsgICAgcmtpc3AxLT5pcnFzX2VuYWJsZWQgPSB0
cnVlOwo+ID4+ICsgICAgLyogTWFrZSBzdXJlIHRoZSBJUlEgaGFuZGxlciB3aWxsIHNlZSB0aGUg
YWJvdmUgKi8KPiA+PiArICAgIG1iKCk7Cj4gPj4gKwo+ID4+ICAgICAgcmV0dXJuIDA7Cj4gPj4g
ICB9Cj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9ya2lzcDEvcmtpc3AxLWlzcC5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9y
a2lzcDEvcmtpc3AxLWlzcC5jCj4gPj4gaW5kZXggZGFmYmZkMjMwNTQyLi5kNmI4Nzg2NjYxYWQg
MTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEv
cmtpc3AxLWlzcC5jCj4gPj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9y
a2lzcDEvcmtpc3AxLWlzcC5jCj4gPj4gQEAgLTEwODIsNiArMTA4Miw5IEBAIGlycXJldHVybl90
IHJraXNwMV9pc3BfaXNyKGludCBpcnEsIHZvaWQgKmN0eCkKPiA+PiAgICAgIHN0cnVjdCBya2lz
cDFfZGV2aWNlICpya2lzcDEgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPiA+PiAgICAgIHUzMiBz
dGF0dXMsIGlzcF9lcnI7Cj4gPj4KPiA+PiArICAgIGlmICghcmtpc3AxLT5pcnFzX2VuYWJsZWQp
Cj4gPj4gKyAgICAgICAgICAgIHJldHVybiBJUlFfTk9ORTsKPiA+PiArCj4gPj4gICAgICBzdGF0
dXMgPSBya2lzcDFfcmVhZChya2lzcDEsIFJLSVNQMV9DSUZfSVNQX01JUyk7Cj4gPj4gICAgICBp
ZiAoIXN0YXR1cykKPiA+PiAgICAgICAgICAgICAgcmV0dXJuIElSUV9OT05FOwo+ID4KPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
