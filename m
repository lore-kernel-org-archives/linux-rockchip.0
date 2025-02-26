Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21B15C021B8
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 17:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L9YyqTfRA+SJhy2mqJe+LmhVS+SxF1SvuiwD2JnWoBI=; b=pfmXNDefM7E/aW
	d877p+fJK2nHhtiH67POT5O/SAVPwjDTKvKuT3ABXNobT2cU3hWtHbUIJrUSO0zXeZlWV+aAGOdqi
	5dHG2uKmfhY1WAFZ30W5sWSFSvr51XNPAa5okJla7J1tcaUDnPH18syIegLxmOZ5xXVyn7sDyS18m
	zZxupVB1Myqd8PZikii+VNDbEKM7toEHyrdH+J2daaL8ejIy4TPviix6mWM2/CjgRR7xK2rXXzQ+o
	+aPgTwjiTY4bV/Pmdy1rnko+vOyHET2YcmIpB1XI4aPdpVPXzo8lYooEx2eu+cRdFAE188RADRJak
	m85em1cx1IlylphYasFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnKtC-00000004e2u-3IFT;
	Wed, 26 Feb 2025 17:08:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnJjJ-00000004Pud-2s05;
	Wed, 26 Feb 2025 15:53:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Sp2RArpH+SxqIvNipgdR8UTH8wCQ4VMdPZhhVAjR59Q=; b=tiHog+I26s/LWX4WCV9x/RGYhw
	HswqddxSRwDVM8cALeNQ12xrX03BBlHKh08VP/8QZG48SCUtBdR1//NT40ic6a73gNbgUqt1kafi0
	ph8mV6VD/8QAa5Ab59TnnaMF52mnKx9qnKanZ9gZqaG4HEW7ci5vEUf2Zz5Ej9dd/MxH98Revgk2q
	1aGgrjTcEz30XpxrQa17d+fMx6EDqvh7FbOwlyRM+kMSNGG1ZFFey8OkJUGVnVs4VByc0N6fe6pbh
	teGYkhKCPoiqCwmKOW3gvw5JEUJR/fIS7BDoMEkIxs1aa2ef4Lsfr27nZvMghozTlqN7cHZvo4jcO
	4tE/+yMw==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tnJjG-0001Ve-KY; Wed, 26 Feb 2025 16:53:46 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: =?UTF-8?B?T25kxZllag==?= Jirman <megi@xff.cz>,
 Heiko Stuebner <heiko@sntech.de>, vkoul@kernel.org, kishon@kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 quentin.schulz@cherry.de, sebastian.reichel@collabora.com,
 Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH 2/2] phy: rockchip: usbdp: re-init the phy on orientation-change
Date: Wed, 26 Feb 2025 16:53:45 +0100
Message-ID: <1878927.BzM5BlMlMQ@diego>
In-Reply-To: <7q5yn466xd7emebhjze4ixkswgyxjjjt5rwvyww2hwbts6bamd@i5vwvegy2os6>
References: <20250225184519.3586926-1-heiko@sntech.de>
 <20250225184519.3586926-3-heiko@sntech.de>
 <7q5yn466xd7emebhjze4ixkswgyxjjjt5rwvyww2hwbts6bamd@i5vwvegy2os6>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_075349_720399_81054AF7 
X-CRM114-Status: GOOD (  27.34  )
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

SGV5IE9uZMWZZWosCgpBbSBNaXR0d29jaCwgMjYuIEZlYnJ1YXIgMjAyNSwgMTU6NDY6MTEgTUVa
IHNjaHJpZWIgT25kxZllaiBKaXJtYW46Cj4gT24gVHVlLCBGZWIgMjUsIDIwMjUgYXQgMDc6NDU6
MTlQTSArMDEwMCwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gPiBGcm9tOiBIZWlrbyBTdHVlYm5l
ciA8aGVpa28uc3R1ZWJuZXJAY2hlcnJ5LmRlPgo+ID4gCj4gPiBVbnRpbCBub3cgdGhlIHVzYmRw
IGluIHRoZSBvcmllbnRhdGlvbi1oYW5kbGVyIHNldCB0aGUgbmV3IGxhbmUgc2V0dXAgaW4KPiA+
IGl0cyBpbnRlcm5hbCBzdGF0ZSB2YXJpYWJsZXMgYW5kIGFkYXB0ZWQgdGhlIHNidSBncGlvcyBh
cyBuZWVkZWQuCj4gPiBJdCBuZXZlciBhY3R1YWxseSB1cGRhdGVkIHRoZSBwaHkgaXRzZWxmIHRo
b3VnaCwgYnV0IHJlbGllZCBvbiB0aGUKPiA+IGNvbnRyb2xsaW5nIHVzYi1jb250cm9sbGVyIHRv
IGRpc2FibGUgYW5kIHJlLWVuYWJsZSB0aGUgcGh5Lgo+ID4gCj4gPiBBbmQgd2hpbGUgb24gdGhl
IHZlbmRvci1rZXJuZWwsIEkgY291bGQgc2VlIHRoYXQgb24gZXZlcnkgdW5wbHVnIHRoZSBkd2Mz
Cj4gPiBkaWQgZ28gdG8gaXRzIHN1c3BlbmQgYW5kIHdva2UgdXAgb24gdGhlIG5leHQgZGV2aWNl
IHBsdWctaW4gZXZlbnQsCj4gPiB0aHVzIHRvZ2dsaW5nIHRoZSBwaHkgYXMgbmVlZGVkLCB0aGlz
IGRvZXMgbm90IGhhcHBlbiBpbiBhbGwgY2FzZXMgYW5kIHdlCj4gPiBzaG91bGQgbm90IHJlbHkg
b24gdGhhdCBiZWhhdmlvdXIuCj4gCj4gT24gUkszMzk5IHRoZXJlJ3MgYSBzaW1pbGFyIGlzc3Vl
IHdpdGggdGhlIGVxdWl2YWxlbnQgdHlwZS1jIFBIWSBkcml2ZXIuCj4gVGhlIFRSTSAocGFydCAy
KSBzdGF0ZXMgdGhhdDoKPiAKPiA0LjYuMSBTb21lIFNwZWNpYWwgU2V0dGluZ3MgYmVmb3JlIElu
aXRpYWxpemF0aW9uCj4gCj4gLSBTZXQgVVNCMy4wIE9URyBjb250cm9sbGVyIEFYSSBtYXN0ZXIg
c2V0dGluZy4KPiAtIENsZWFyIFVTQjIuMCBvbmx5IG1vZGUgc2V0dGluZyAoYml0IDMgb2YgcmVn
aXN0ZXIgR1JGX1VTQjNQSFkwLzFfQ09OMCBpbiBDaGFwdGVyIEdSRikKPiAtIFVTQjMuMCBPVEcg
Y29udHJvbGxlciBzaG91bGQgYmUgaG9sZCBpbiByZXNldCBkdXJpbmcgdGhlIGluaXRpYWxpemF0
aW9uIG9mIHRoZSBjb3JyZXNwb25kaW5nCj4gICBUeXBlQyBQSFkgdW50aWwgVHlwZUMgUEhZIGlz
IHJlYWR5IGZvciBVU0Igb3BlcmF0aW9uLgo+IC0gU2V0IFBIWUlGIHRvIDEgdG8gdXNlIDE2LWJp
dCBVVE1JKyBpbnRlcmZhY2UgKHNlZSByZWdpc3RlciBHVVNCMlBIWUNGRzApCj4gLSBDbGVhciBF
TkJMU0xQTSB0byAwIHRvIGRpc2FibGUgc2xlZXAgYW5kIGwxIHN1c3BlbmQgKHNlZSByZWdpc3Rl
ciBHVVNCMlBIWUNGRzApCj4gICAuLi4KPiAKPiBUaGUgUEhZIGZvciBTdXBlcnNwZWVkIHNpZ25h
bHMgaXMgZXhwZWN0ZWQgdG8gYmUgc2V0IHVwIHdoaWxlIHRoZSBVU0IKPiBjb250cm9sbGVyIGlz
IGhlbGQgaW4gcmVzZXQsIHdoaWNoIG1ha2VzIHNlbnNlIEhXIHdpc2UsIGFuZCBpdCdzIHdoYXQg
ZG93bnN0cmVhbQo+IGtlcm5lbCBlZmVjdGl2ZWxseSBkb2VzLCB2aWEgaXRzIFJQTSBiYXNlZCBo
YWNrLgo+IAo+IFJLMzU4OCBUUk0gZG9lc24ndCBoYXZlIHZlcnkgZGV0YWlsZWQgbm90ZXMgb24g
dGhpcywgYnV0IEkgZXhwZWN0IGl0IHdpbGwgYmUKPiBzaW1pbGFyLgo+IAo+IFNvIHJlY29uZmln
dXJpbmcgdGhlIHBoeSBoZXJlLCB3aGlsZSBpdCdzIGFjdGl2ZWx5IGxpbmtlZCB0byB0aGUgVVNC
IGNvbnRyb2xsZXIKPiB3aXRob3V0IHRoZSBjb250cm9sbGVyIGRyaXZlciBkcml2aW5nIHRoZSBw
cm9jZXNzIHNvIGl0IHJlbGlhYmx5IGhhcHBlbnMgd2hpbGUKPiBpdCdzIGluIHJlc2V0LCBvciBh
dCBsZWFzdCBzbyB0aGF0IFVTQiBjb250cm9sbGVyIHJlc2V0IGhhcHBlbnMgYWZ0ZXJ3YXJkcywg
bWF5Cj4gbm90IGJlIGNvcnJlY3Qgd2F5IHRvIGFwcHJvYWNoIHRoaXMuCgp0aGUgZnVuY3Rpb24g
aGVyZSwgaXMgdXNpbmcgaW5mcmFzdHJ1Y3R1cmUgZnJvbSB0aGUgdHlwZS1jIGZyYW1ld29yay4K
ClRoZSBmdW5jdGlvbiBpbiBxdWVzdGlvbiB0Y3BtX211eF9zZXQoKSwgd2hpY2ggdGhlbiBlbmRz
IHVwIGluIHRoZQp1c2JkcF9waHkgb25seSBnZXRzIGNhbGxlZCBmcm9tIHRjcG1fcmVzZXRfcG9y
dCgpIC4KCldoaWNoIEkgdGhpbmsgd2lsbCBkbyB0aGUgcmlnaHQgYWxyZWFkeSAtIGp1ZGdpbmcg
YnkgaXRzIG5hbWUgOy0pIC4KW2FuZCBhbHNvIGJ5IHRoZSBmYWN0IHRoYXQgdGhlIHJlZmVyZW5j
ZWQgcWNvbSBwaHkgYmVoYXZlcyBzaW1pbGFybHkKIHdoZW4gdGFsa2luZyB0byB0aGUgdHlwZS1j
IGZyYW1ld29ya10KCgpGb3IgdGhlIHJrMzM5OSBJIHdvdWxkIHRoaW5rIGNvbnZlcnRpbmcgdGhl
IG9sZCB0eXBlYy1waHktZHJpdmVyIG92ZXIgdG8KdXNlIHRoZSBhY3R1YWwga2VybmVsIHR5cGUt
YyBmcmFtZXdvcmssIG1pZ2h0IGp1c3QgbWFnaWNhbGx5IHNvbHZlIHRoZQppc3N1ZSB5b3UgaGF2
ZSBvbiBpdC4KClJvY2tjaGlwIGFjdHVhbGx5IGhhcyBjb252ZXJ0ZWQgdGhlIHJrMzM5OSB0eXBl
Yy1waHkgdG8gdXNlIHRoZSB0eXBlLWMKZnJhbWV3b3JrIGluIHRoZWlyIHZlbmRvciBrZXJuZWwu
CgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
