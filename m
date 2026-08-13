Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8161C5B572
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2026 17:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xpfg8zD1XEmzDWu4Y+aQykTRK4wlfQG6ZVx5YI/isoM=; b=Z5UiL28Ui4hbtY
	McRgdjvjV99cjuKZJki9eQuusA7pSmBjTLfU8Asf/8AqV+eBHuEldSDZW6k2xuzIqtKwo5DZFfshc
	pf10pPkyuxcY8ca1q3A6e7kc5WFN0Mw9L1CxG/Ua6H00YTgGkH2Zdc2Ko+czO4Cryw0DszDDBCIV6
	GfQtiFsS+Cdjrtp4xVEpFVh1Q26qU/8SpWubSwDgeLEu0Cq8YBNErckx42Gs6HlG7lS8L9tVctWiu
	h9LiFtVvbD+M/RhUQ/b9lv3p1z7iH7wqpADdzsaFD9ugFnsi5K6vBuMDv5Bve/fUznRs6tGvmTz85
	VkVGAK+vSXyblL3gZn6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuZCQ-00000001I1A-1lyO;
	Thu, 13 Aug 2026 17:26:38 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuZCM-00000001HzL-2IFe
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Aug 2026 17:26:37 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5b01910b499so48437e87.0
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Aug 2026 10:26:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786641992; cv=none;
        d=google.com; s=arc-20260327;
        b=fTZctQC4jAssTSOVBNmk6DriVLEXTpAhB6pAdjgLEVzOP3zpWyZzF9ZVIcdj8s8xYC
         pfsq16VOpJZKO9M62ydGw+e9tL/zVASTliS6dtxs5KpAE7fEkQDVMNm3wuDNxiOdfDXX
         xxtAyV8mNVDDjLTTW+UPo1h3YjXaBvBu9/yNNzakUHCc3S8E+W3gXoVbHK7qiTypWovD
         vNab6u4ygKxejQwnYXZIlO8T5QuhVorYBF7hL+LY6qkr/OfGavtih6YgKwEKMmLRVWGP
         WniMiRaxb8nf2lgmwnnXusz6748oFXgnWC4o22rwaUsmYxFhPK9RE5QHUaviotGbTp8a
         UJ7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6dGcfFS+7hS+n9L3WjL6EpmxEX7LHvUATyMdqsvRvBo=;
        fh=1jKY6rD/ZHVurGOQQC72HWVb4j+aZzjc8ZQD1oKFFTc=;
        b=j+0cu2Lo8C3ecXpTz6f03L8PC95hRyQkdDXPOkl5KMFII3Ni4gERNHdh6Ml7OOiyZr
         q8mWgTrtO1Q2kdhY2HBWFJbUXNlNjCHthCD0mWRwOnwgfaxmiOgSjqOXHl5eLuiJWn2M
         laz+NYTomn9VmKOyVoJnlnpo/PKuyvj0k3WFPPMuZ7DDm5BgNeF4Vm7X0aYEToxq+3Gk
         O69c7mcEirfT4Ja1F2M+VdbpQz0/Bo/7Neah9K4bQSi5fE80E/YeXBisEbzlLoIGk0Eu
         LYyXecSn7tsilChdmO15pGrzE09QZYgGSgPb5qMIeuvytbs9zDwi+rB7A0Ar0igX3Khy
         Wh+w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786641992; x=1787246792; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=6dGcfFS+7hS+n9L3WjL6EpmxEX7LHvUATyMdqsvRvBo=;
        b=BORbtnil+GIX/D/IKloAujxRdfE5RkzFqBK+ciHT0UIBGIayAWRobad//J6q9NnREk
         EjRXCk2QafPZbND/TTa34ngexacvE6LfzpndTlzxwwV9j/EPRraJOee7YMa6/GXqfdf9
         JjJBL9AB/C4QqxjgPwM04rioQ89MD4Hj8fFg6q7GR/2ry7XVBC7KR08ksh8YIe4NNivb
         J/EV1w8Bazu6/ihPKTwC4u+R8CQAJ+ZSKJC+Bg5VdQgrYgYCVfmL5Ok77IvpM8bks7WX
         ZFTdDt0SLb2LVy8Vw7Vf1JJ+60qV7N6+9AAvH4bALv7ipPvlqoGwjsFiaxnb4oMZJC7O
         cFRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786641992; x=1787246792;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6dGcfFS+7hS+n9L3WjL6EpmxEX7LHvUATyMdqsvRvBo=;
        b=PaVYJOeDItx9M1dyPSlAdpdQ7ONItbbV/kabDJ2hHSLfLqhYqMmHLxNMdM3Ilccr5m
         jLWjcSxGqhK5Rdv1P0DoTYnIJACX5xr6UeDC8Cal6o9Gqc5Z3rdgGJQr/jW+uSCGqXM3
         aFrbpS6zHZ+nXOfU7QB0lrkO51AjaRQZGdSiFhqqH/K6cmsXHeEW0qlUX6D80DFwWv7U
         pLCrfxts2xxayzYme0nMo1bW016jtVYuGT5Dasq6VDRaiokdiIkYCQZ+T7e74HZbf1/+
         oQB6a4XdLvY5EQEapFcJhY4WXQ43byOCqGJlTKf8m6B5mX+FFEN7PoZ77uKoDzv72wkK
         qEXA==
X-Gm-Message-State: AOJu0YzW88Mznt2A8+o5U9YixT2XGxfOHOv+nbZCfZWChHeD1AhGL2QY
	5JVSe5ZEqcsGnsyYinJ9/WnrhUL4d6IfLf7GAC3NEhTel47a+261EVsNiBGmCDImPHFhyEAEvJt
	40Sg80MEoQbD8WpcCXon1VO3RJVVPI8/bcLs2
X-Gm-Gg: AR+sD13VkReUV3eFVD2xPwRJ8M5e28gKSL9YYliB6SyI0Cz21zKIt8sEyTLeRJHXOA2
	QKigHoZSFFWbNLqggs7xJLvgsi3s4/CSqkFPDM20Wi53u7KU1eICDPa6f5NLo2VmI1YXHl776Ol
	nOPRJFoV9YCxVmKCDwZy6NTsDtK540D2e2yjHkOY0jo2hl4dqakN2lhosHMzR5MVXklcDgsCYTA
	aXXCAcH8mdq1YAvm4xsumnX8hB4OTLWR1dR+B7GXm/KkeLGjq44qa/rxlJECU4C33OPTgXsnoeU
	sHv/2W3JxhiKBAciT0btacGk13tRbuUIasT8CP/kSMJl7g==
X-Received: by 2002:a05:6512:3f25:b0:5b1:4c14:9b3d with SMTP id
 2adb3069b0e04-5b453cc57a2mr1544652e87.11.1786641991684; Thu, 13 Aug 2026
 10:26:31 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1781622998.git.geraldogabriel@gmail.com>
In-Reply-To: <cover.1781622998.git.geraldogabriel@gmail.com>
From: Geraldo Nascimento <geraldogabriel@gmail.com>
Date: Thu, 13 Aug 2026 14:26:20 -0300
X-Gm-Features: AUfX_mxjuOfsACV2NcpMvanMb2F3tMylLUszlHpzH8YkVOIfS0W3_-lZ3FK3lac
Message-ID: <CAEsQvcv7AddxRsy5vr_pkTYPs0zm7w60NxxpS3r2_va68yN5Ow@mail.gmail.com>
Subject: Re: [PATCH v7 0/3] PCI: rockchip: 5.0 GT/s speed discouraged by Rockchip
To: Shawn Lin <shawn.lin@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_102634_612344_01BD3FFE 
X-CRM114-Status: GOOD (  19.01  )
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

SGkgZXZlcnlvbmUsCmEgcXVlc3Rpb24gdG8gUENJIG1haW50YWluZXJzOgoKSXQncyBiZWVuIHR3
byBtb250aHMgYWxyZWFkeSBzaW5jZSB2NyB3aXRoIG5vIHJlc3BvbnNlIGFueW1vcmUgZnJvbQp5
b3UgZ3V5cy4gSXMgdGhlcmUgYSBzcGVjaWZpYyB0aGluZyB5b3UncmUgd2FpdGluZywgbGlrZSBh
biBBQ0sgZnJvbQpTaGF3biBMaW4/IE9yIHBlcmhhcHMgdGhpcyBoYXMgYmVlbiBmb3Jnb3R0ZW4g
YWJvdXQ/CgpUaGFua3MsCkdlcmFsZG8gTmFzY2ltZW50bwoKT24gVHVlLCBKdW4gMTYsIDIwMjYg
YXQgMTI6MjTigK9QTSBHZXJhbGRvIE5hc2NpbWVudG8KPGdlcmFsZG9nYWJyaWVsQGdtYWlsLmNv
bT4gd3JvdGU6Cj4KPiBEcmFnYW4gU2ltaWMgYWxyZWFkeSBoYWQgd2FybmVkIG1lIG9mIHBvdGVu
dGlhbCBpc3N1ZXMgd2l0aCA1LjAgR1Qvcwo+IHNwZWVkIG9wZXJhdGlvbiBpbiBSb2NrY2hpcCBQ
Q0llLiBIb3dldmVyLCBpbiByZWNlbnQgaW50ZXJhY3Rpb25zCj4gd2l0aCBTaGF3biBMaW4gZnJv
bSBSb2NrY2hpcCBpdCBjYW1lIHRvIG15IGF0dGVudGlvbiB0aGVyZSdzIGdyYXZlCj4gZGFuZ2Vy
IGluIHRoZSB1bmtub3duIGVycmF0YSByZWdhcmRpbmcgNS4wIEdUL3Mgb3BlcmF0aW9uYWwgc3Bl
ZWQKPiBvZiB0aGVpciBQQ0llIGNvcmUsIGluY2x1ZGluZyBkYXRhIGxvc3MuCj4KPiBEcm9wIGFs
bCBjb2RlIHJlbGF0ZWQgdG8gNS4wIEdUL3Mgb3BlcmF0aW9uYWwgc3BlZWQgZnJvbSB0aGlzIGRy
aXZlci4KPgo+IEVuZHBvaW50IE1vZGUgZHJpdmVyIHdhcyBub3QgdGVzdGVkLgo+Cj4gQ2hhbmdl
cyBpbiB2NzoKPiAtIEluIHBjaWUtcm9ja2NoaXAuYyAoUEFUQ0ggMykgZHJvcCB1bnJlYWNoYWJs
ZSBjb2RlCj4gLSBMaW5rIHRvIHY2OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvY292ZXIu
MTc4MTIwNzQ3NC5naXQuZ2VyYWxkb2dhYnJpZWxAZ21haWwuY29tL1QvCj4KPiBDaGFuZ2VzIGlu
IHY2Ogo+IC0gU3F1YXNoZWQgcGF0Y2hlcyAzICYgNCB0b2dldGhlciBhcyBzdWdnZXN0ZWQgYnkg
TWFuaQo+IC0gTW9yZSBmb3JtYWwgd2FybmluZyBtZXNzYWdlIGFzIHN1Z2dlc3RlZCBieSBEcmFn
YW4KPiAtIFNldCB0aGUgMi41IEdUL3MgYml0IHJlZ2FyZGxlc3Mgb2YgaWYgbGluay1zcGVlZCBp
cyBzZXQgdG8gMgo+IC0gTGluayB0byB2NTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2Nv
dmVyLjE3NzIyMzk1OTguZ2l0LmdlcmFsZG9nYWJyaWVsQGdtYWlsLmNvbS9ULwo+Cj4gQ2hhbmdl
cyBpbiB2NToKPiAtIENoYW5nZWQgY29tbWl0IG9yZGVyIHRvIG5vdCBicmVhayBidWlsZHMgYW5k
IGFkanVzdGVkIGNvcHkgcGFzdGVkCj4gICBjb21taXQgbWVzc2FnZS4gKHRoYW5rcyBDaGFyYWxh
bXBvcyEpCj4gLSBSZWludHJvZHVjZWQgYmVoYXZpb3IgdG8gZm9yY2UgMi41IEdUL3MgaW4gY2Fz
ZSB0aGVyZSdzIHNvbWV0aGluZwo+ICAgbm9uLWRlZmF1bHQgaW4gdGhlIERULiAodGhhbmtzIERy
YWdhbiEpCj4gLSBMaW5rIHRvIHY0OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2Nr
Y2hpcC9jb3Zlci4xNzcyMTY5OTk4LmdpdC5nZXJhbGRvZ2FicmllbEBnbWFpbC5jb20vVC8KPgo+
IENoYW5nZXMgaW4gdjQ6Cj4gLSBJbmNvcnBvcmF0ZSBzdWdnZXN0aW9uIGJ5IEJqb3JuIGFuZCBy
ZWZpbmVkIGJ5IERyYWdhbiB0byBkcm9wIHRoZQo+ICAgImNhdGFzdHJvcGhpYyIgY29kZQo+IC0g
TGluayB0byB2MzogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvY292ZXIu
MTc3MjA1Nzc5OS5naXQuZ2VyYWxkb2dhYnJpZWxAZ21haWwuY29tL1QvCj4KPiBDaGFuZ2VzIGlu
IHYzOgo+IC0gQ2xhcmlmeSB3YXJuaW5nIG1lc3NhZ2UgZXZlbiB0aG91Z2ggUm9ja2NoaXAgd29u
J3QgZGlzY2xvc2UgZGV0YWlscwo+IC0gRHJvcCBEVCBjaGFuZ2VzIGFzIHRoZXkgd2VyZSBhcHBs
aWVkIGFzIHN1YnNldCBieSBIZWlrbwo+IC0gTGluayB0byB2MjogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvYWxsL2NvdmVyLjE3NjM0MTU3MDUuZ2l0LmdlcmFsZG9nYWJyaWVsQGdtYWlsLmNvbS9U
Lwo+Cj4gQ2hhbmdlcyBpbiB2MjoKPiAtIGhhcmQgbGltaXQgdG8gMi41IEdUL3MsIG5vdCBqdXN0
IHdhcm4KPiAtIGFkZCBSZXBvcnRlZC1ieTogYW5kIFJldmlld2VkLWJ5OiBEcmFnYW4gU2ltaWMK
PiAtIHJlbW92ZSByZWR1bmRhbnQgZGVjbGFyYXRpb24gb2YgbWF4LWxpbmstc3BlZWQgZnJvbSBo
ZWxpb3M2NCBkdHMKPiAtIGZpeCBMaW5rOiBvZiBoZWxpb3M2NCBwYXRjaAo+IC0gc2ltcGxpZnkg
UkMgbW9kZSBjb21tZW50Cj4gLSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9h
bGwvYVJoUjc5dTVCUHRSUkZ3M0BnZWRheS9ULwo+Cj4gR2VyYWxkbyBOYXNjaW1lbnRvICgzKToK
PiAgIFBDSTogcm9ja2NoaXAtZXA6IGRvIG5vdCBhdHRlbXB0IDUuMCBHVC9zIHJldHJhaW5pbmcK
PiAgIFBDSTogcm9ja2NoaXAtaG9zdDogZG8gbm90IGF0dGVtcHQgNS4wIEdUL3MgcmV0cmFpbmlu
Zwo+ICAgUENJOiByb2NrY2hpcDogZHJpdmUgYXQgMi41IEdUL3MsIGVycm9yIG90aGVyIHNwZWVk
cwo+Cj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jICAgfCAxMyAt
LS0tLS0tLS0tLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1ob3N0
LmMgfCAyMCAtLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3Bj
aWUtcm9ja2NoaXAuYyAgICAgIHwgMTQgKysrKysrLS0tLS0tLS0KPiAgZHJpdmVycy9wY2kvY29u
dHJvbGxlci9wY2llLXJvY2tjaGlwLmggICAgICB8ICAzIC0tLQo+ICA0IGZpbGVzIGNoYW5nZWQs
IDYgaW5zZXJ0aW9ucygrKSwgNDQgZGVsZXRpb25zKC0pCj4KPiAtLQo+IDIuNTQuMAo+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
