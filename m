Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98AEF606A31F
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 13:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rz1MOKoB;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=lAbr702A
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+YRJsblJDcTi/0I63NYbk9qwA5UD7PX8H5HNtlnnkDc=; b=rz1MOKoBPgLokEppkhvv2+WzS+
	5B2WxcGmu6yYLf51m4C1Vjzvxyx21vfKHwr4qYCXE4eKIZNOQXD3DVIfxFFDKOORJKde0XmqRdGb7
	wK4iW6MNtTIU7akEyjMtSvd1+d637hDB+gmfXvwpG6GN05yLCPKBGxUdUhbyEkq63nAtwovHbz24S
	Dvo1EEcKUCavA4vuXw2s88hW89Ta17A7yRQJWO/jkBaLy0PSJSyVKFalUDHDBf2h8mn4rIBa/Ofu6
	e9eAhW797avjheZO7G11Tn/+bsputQFv9oddHDiukA7vziYLUgb00NWIUiMnRKnxUb9TJz2HPHUtj
	Xl/h/uOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSa6D-0000000HXui-1JEa;
	Sun, 15 Nov 2026 13:16:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSa6A-0000000HXu4-1G7k;
	Sun, 15 Nov 2026 13:16:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=P/iZWwmcm3GJ6CC8MhWTY8Sc2xzYlGTS5W4HDt6HJ9I=; b=lAbr702A7r84NtQz1gujPywg4k
	yBT3Z0xSGQanL5I3/5xJUV+0Kw/mxXBjjQVHsF+Y65CpJPrGrjj1WvwqFPn/FKwmPvq28ATkzAryg
	7Il7K3vQmQ1CdSmPyCIxYdECs6NT761RlmgOQBsDViniBQ5rzBTlw58PiveEVMo7haTgv61jeyIWI
	wJDMN5VktCHa8leoByjVNmFuI9VrXrjzsNIRgbElQ8vk6JixqXyqygiUu7WCRi7OvhFpEVj+F3lRq
	xMrKretk6AlxK4EUzCTFqOaMsKlh0xRYsvyxrfiP4VxUeNPBrT33PkZRK3gl36hQ/BLdHMD07Asxf
	f+pybMTA==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: tomeu@tomeuvizoso.net, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
 p.zabel@pengutronix.de, ogabbay@kernel.org, zhangqing@rock-chips.com,
 Jiaxing Hu <gahing@gahingwoo.com>
Cc: royalnet026@gmail.com, ulf.hansson@oss.qualcomm.com,
 abel.vesa@oss.qualcomm.com, sebastian.reichel@collabora.com,
 sidong.yang@furiosa.ai, u.kleine-koenig@baylibre.com,
 chaoyi.chen@rock-chips.com, shawn.lin@rock-chips.com,
 finley.xiao@rock-chips.com, diederik@cknow-tech.com, alchark@flipper.net,
 leonard@lausen.nl, vlwwwwww@gmail.com, jeff.hugo@oss.qualcomm.com,
 rfoss@kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v17 03/12] accel/rocket: wait for a running IRQ handler before
 resetting a core
Date: Sun, 15 Nov 2026 14:16:01 +0100
Message-ID: <hvfzY-vMTP2qEvT5CAWuhg@sntech.de>
In-Reply-To: <18667b2afdcaae217fa1038f5348ab23ed756bdc.1794615323.git.gahing@gahingwoo.com>
References: <cover.1794615324.git.gahing@gahingwoo.com>
 <18667b2afdcaae217fa1038f5348ab23ed756bdc.1794615323.git.gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_051646_386386_9970DA04 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gU2Ftc3RhZywgMTQuIE5vdmVtYmVyIDIwMjYsIDA0OjA1OjIwIE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgSmlheGluZyBIdToKPiBkcm1fc2NoZWRfc3RvcCgpIGRvZXMg
bm90IHdhaXQgZm9yIGEgdGhyZWFkZWQgSVJRIGhhbmRsZXIgdGhhdCBpcyBhbHJlYWR5Cj4gcnVu
bmluZywgc28gY2FsbCBzeW5jaHJvbml6ZV9pcnEoKSBhZnRlciBpdCB0byBtYWtlIHN1cmUgdGhl
IGhhbmRsZXIgaGFzCj4gZmluaXNoZWQgYmVmb3JlIHRoZSByZXNldC4KPiAKPiBCZWZvcmUgc3lu
Y2hyb25pemVfaXJxKCksIG1hc2sgdGhlIGludGVycnVwdCBhbmQgY2xlYXIgdGhlIHJhdyBzdGF0
dXMsIHNvCj4gdGhhdCB0aGUgTlBVIGNvcmUgY2Fubm90IHJlcG9ydCBhIGNvbXBsZXRpb24gYWZ0
ZXJ3YXJkcy4KPiAKPiBEbyB0aGlzIHVuZGVyIGpvYl9sb2NrLCBiZWNhdXNlIHRoZSBzdWJtaXQg
cGF0aCBzZXRzIHRoZSBpbnRlcnJ1cHQgbWFzawo+IHVuZGVyIHRoZSBzYW1lIGxvY2suCj4gCj4g
T25seSB0b3VjaCB0aGVzZSByZWdpc3RlcnMgd2hlbiB0aGUgZGV2aWNlIGlzIHBvd2VyZWQ6IGNo
ZWNrIHdpdGgKPiBwbV9ydW50aW1lX2dldF9pZl9hY3RpdmUoKSwgc28gdGhhdCBhIHJlZ2lzdGVy
IGFjY2VzcyB3aXRoIHRoZSBwb3dlcgo+IGRvbWFpbiBvZmYgY2Fubm90IHJhaXNlIGFuIFNFcnJv
ci4KPiAKPiBTdWdnZXN0ZWQtYnk6IElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBKaWF4aW5nIEh1IDxnYWhpbmdAZ2FoaW5nd29vLmNvbT4KPiBU
ZXN0ZWQtYnk6IElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNvbT4gIyBSSzM1ODgs
IHRocmVlIGNvcmVzLCBpbmR1Y2VkIHJlc2V0LCBKT0JfVElNRU9VVF9NUz0yCgpSZXZpZXdlZC1i
eTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
