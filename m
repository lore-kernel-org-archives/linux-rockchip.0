Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF00606C194
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 08:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VVhGfIKc;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=B19xrHOs
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=COwBynVXMpbFZsEk83dsxOD1HWQK3E+rn+sSCWzwkvs=; b=VVhGfIKcKbTGKV7mWa/iVJYHYm
	FNwc4qMjGvkskSc3V0fe+XnyHArM1gOiagDZP6vH8dzdlZqA/jsGFbdC84soNpHAbj4hHalsTTvk7
	K86IeBU7VZTP4ZAzv6P3ZFS31k0uhddEcFGIX+mqC8bdI/H8yFZSVj1I9k54Dweg3EY6Zy8LoCEp7
	hoj8eB5wYynzv5J56ae8rs+EA3dllkZekfzI54gC+HB1/mFyklaUozOXc/XkQwpmeuoj9Z/VvxR8A
	7zapccZHpxDIfgp4Q04X4U7uNpYL9nVIR9EZsHIJn2auAXyxotiVKnpQ7DkPm4FhPIhpEHU7+gFkr
	j7Tmflrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRmwA-0000000C8Rx-3Fnx;
	Fri, 13 Nov 2026 08:47:10 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRmw4-0000000C8QM-39mv
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 08:47:06 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-6b547d6c07bso1289663a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 00:47:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794559623; cv=none;
        d=google.com; s=arc-20260327;
        b=BEsYOL4vscVWi7asQxLtO0z4XdJ/zZBN9pRZWacMcxe+wOd15snEdml/in6QaNLz44
         TeJeqHiF7NT8JEk5sYM+2pL5Za/M86QfyHAOrwggTmlKjFlsHEk730gDbsYiMJuPFfGi
         GPFFGkxpZkj5yI2oNHCnZun9qw7KEAecwE6ftwNm0HikUCB6bQegCbAWKZfiLy45pkX4
         j/hjeSW569LD55toOsQ54ZOShsLb/WlND8cKOJVOy7x7VUUMGeBHwqBw/YXr3Z3cxHjD
         1HB0JcVc56Vtn9OGG2iulwjfEUcpb7NgizGySKSbno1FDI8Aq0tWyn0bX9R1Sgy7O+t2
         pJIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qhNHjf1SdugrZ5BSNouBIP0FOeW62fEzpK61bFfdG/8=;
        fh=LRyhtXe7Vxc8phWHwRK3CgHuzd7d+ObMpsn9Kd8u7lA=;
        b=cwSpMldVAtPA7hhMFiWmz51Vmagz/QNzKhqc0sZfYH8gsl6pQdhkl/xVrD1I423HRW
         qjqFrcTUY6exOGxcrF5O3c4vYr1Z1tFj5Z2Q7i/u/ZE1dhql5UscpOZY3Tai6+zIOutx
         G/oCRtkXttg+s6BeqqHEk4snnT2DOlsKKpfgkB4VR1DHIr8RLG62sLTgD6pOF4hT66Ms
         IQqZkraHXsM2gA0qmSeNJ2IHoeP3AM26/Q4gIHSPS8ZcjauEyNsPtbDtXnYlI4I61xUA
         NfOER2hAFiK7OzNz+SMv90nBJTg5f9MmLAt5DL96lTd3E0159UQgfXSa55EH+2Sncauh
         jvfg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1794559623; x=1795164423; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=qhNHjf1SdugrZ5BSNouBIP0FOeW62fEzpK61bFfdG/8=;
        b=B19xrHOsOpVGLYgGw8eRD69Vun022bAlRK+k5ysxrwgzdyyEQ7rcWEgDBBwYn0dn4p
         nnP6/eGzkntmdAfhftAxPdsBtemOwT3AWkRejiimT7MUfB/gHTClXz3M2wTrsrISHUG/
         dW90Zawbxb1JSx7S5XbolBouZMqGafuT9q1kEObf2F6CpBAl6sUsfGUtn26uLrQCny19
         FbGPskHilP+a5c/eXevfypA8P4hmKvyPT5HIeu4ufTWDwxtIwopiU0bin6662zhZtWW5
         N68yajPZRp0CVVGqrLLUqWca0ersDNrPOieWXvr8Rf/Ns79L3o+WRKMqDS+2jucE26LF
         kuSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794559623; x=1795164423;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qhNHjf1SdugrZ5BSNouBIP0FOeW62fEzpK61bFfdG/8=;
        b=BwnDPtfToPLYjMNmn+4pDHg4kDg4xOjBTUrXAkTL5/Br9xX0l5bX3ORj9gk5j+nQWq
         ZmY0aytIZwkNe4gFf7szobakFC0rcYHrcyKSGcqEgYgUijAItQMFXtNqSLYau92x2yNz
         /igZqqwpKzKJoLDcOU9b4quY/oX9CUCAUeHHdE1SnnN3s+G6tmfVJtRPiNZ6SEOot0C0
         be12O3mD5eVdYxJnJmXZXF9dhq4KiJAW+1f/sagqNQOo+ITspSgWkgJFay+eH3v+lFPe
         Atm50UeLugCtpNs9Ogo/3DKTbenJiANsiMroB2+pe7gLF/Cyi3/oCsQJ70CA5rzYJ4ju
         9qRA==
X-Forwarded-Encrypted: i=1; AL+hErF3HdO+CncJwNGsGpyndv98D2F7dDgck+y/zeLg0xnkxy1djYq3GDuU1+opyURjor1cC1sAFF7R9/mUndeO9Q==@lists.infradead.org
X-Gm-Message-State: APuU4Z+0sAvu/UaXiI+Lpuvy+kzxjTAjH08oHQ/B/z9Nma2nH9IuSCSg
	A8Qf2YjSfYyshefBuhE0EVujdrigP3xuZ25nWQ4KZQxEE/xhOpz7pKB71+coHWJ2lRxCcy6VY/2
	1rx3awiab1c+MzkrQuanBaI2mUQc9y3t/vlY+J3kTkQ==
X-Gm-Gg: AYBFou2dkI24gOiPmn++kZenicNCLNnHTtNEq2NZ2eCZLW1sk+j57b5qs/2TMfc02dx
	/TgOlK9Ff+8fx6sKDZqGGKMPQS0oa/vK0dFeo17aZCDerjJuC8F2A97Fjt9BvE0t+NH0+jOxzeB
	ucSCeFvB1F7eEl0vv5l79Ldultwc80RtgZP4G7pMmZ6N06m2NlYJ+8jIbahb+zIikvWWUCiT3Kr
	eTVUQGrxhvxBSupnBuCnmpyep5pf8x7oRGgaQayHPmJ/XmvJrZHaXCCLRX53XVLmZp0avujXZVH
	FpqZXklzhE/84rVjrAb3n758x3bsbYfxbdMtFrVW23qhPWPlSaTqI9VXVBXt0VIOxSk+Ppz+v4y
	5Ly9jkexamgIS1ZnyZGAn6KqctRfEBYUCAIn5zH0lYejVgTsekG+fn9W2FzoL3WF1Nt0w
X-Received: by 2002:a17:907:3e13:b0:c2e:3ed7:7db4 with SMTP id
 a640c23a62f3a-c5096340feamr135396666b.23.1794559622820; Fri, 13 Nov 2026
 00:47:02 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <1766560210-100883-1-git-send-email-shawn.lin@rock-chips.com> <1766560210-100883-5-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1766560210-100883-5-git-send-email-shawn.lin@rock-chips.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 13 Nov 2026 12:46:51 +0400
X-Gm-Features: AclHuK-fnCfqep89v60X_1kiVQLyjf-ZvvNw6LylrxXymHR-bVpgT9BeqYnaapI
Message-ID: <CAKTNdwFfQyMGJQnFU5cwQyOsXvEx4NowOT6n-jPkM4b0zGX50w@mail.gmail.com>
Subject: Re: [PATCH 4/5] phy: rockchip-snps-pcie3: Check more sram init status
 for RK3588
To: Shawn Lin <shawn.lin@rock-chips.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, 
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-phy@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_004704_871958_8AB6AFEA 
X-CRM114-Status: GOOD (  17.01  )
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgU2hhd24sCgpPbiBXZWQsIERlYyAyNCwgMjAyNSBhdCAxMToxMOKAr0FNIFNoYXduIExpbiA8
c2hhd24ubGluQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPgo+IEFsbCB0aGUgbG93ZXIgNCBiaXRz
IHNob3VsZCBiZSBjaGVja2VkIHdoaWNoIHNob3dzIHRoZSBtcGxseF9zdGF0ZS4KPgo+IFNpZ25l
ZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+IC0tLQo+Cj4g
IGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zbnBzLXBjaWUzLmMgfCAyICstCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zbnBzLXBjaWUzLmMgYi9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc25wcy1wY2llMy5jCj4gaW5kZXggZjVh
NWQwYWYuLjZjYzM4ZTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLXNucHMtcGNpZTMuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2Nr
Y2hpcC1zbnBzLXBjaWUzLmMKPiBAQCAtNDMsNyArNDMsNyBAQAo+ICAjZGVmaW5lIFJLMzU4OF9Q
Q0lFM1BIWV9HUkZfUEhZMF9MTjFfQ09OMSAgICAgIDB4MTEwNAo+ICAjZGVmaW5lIFJLMzU4OF9Q
Q0lFM1BIWV9HUkZfUEhZMV9MTjBfQ09OMSAgICAgIDB4MjAwNAo+ICAjZGVmaW5lIFJLMzU4OF9Q
Q0lFM1BIWV9HUkZfUEhZMV9MTjFfQ09OMSAgICAgIDB4MjEwNAo+IC0jZGVmaW5lIFJLMzU4OF9T
UkFNX0lOSVRfRE9ORShyZWcpICAgICAgICAgICAgIChyZWcgJiBCSVQoMCkpCj4gKyNkZWZpbmUg
UkszNTg4X1NSQU1fSU5JVF9ET05FKHJlZykgICAgICAgICAgICAgICgocmVnICYgMHhmKSA9PSAw
eGYpCgpUaGlzIGJyZWFrcyBQQ0llM3g0IG9uIG15IFJhZHhhIFJPQ0sgNUIsIHdoaWNoIHRoZW4g
Y2Fubm90IGZpbmQgaXRzCk5WTWUgcm9vdCBmaWxlc3lzdGVtLiBTZWJhc3RpYW4ncyByb2NrY2hp
cC1kZXZlbCBicmFuY2ggY2FycmllcyB0aGlzCnNlcmllcywgYW5kIGtlcm5lbHMgYnVpbHQgZnJv
bSBpdCBmYWlsIHdpdGg6CgogIHBoeSBwaHktZmVlODAwMDAucGh5LjEzOiBsb2NrIGZhaWxlZCAw
eDcsIGNoZWNrIGlucHV0IHJlZmNsayBhbmQgcG93ZXIgc3VwcGx5CiAgcm9ja2NoaXAtZHctcGNp
ZSBhNDAwMDAwMDAucGNpZTogcGh5IGxvY2sgZmFpbGVkCiAgcm9ja2NoaXAtZHctcGNpZSBhNDAw
MDAwMDAucGNpZTogcHJvYmUgd2l0aCBkcml2ZXIgcm9ja2NoaXAtZHctcGNpZQpmYWlsZWQgd2l0
aCBlcnJvciAtMTEwCgpUaGUgUkszNTg4IFRSTSAoVjEuMCwgUGFydCAxKSBkZXNjcmliZXMgUENJ
ZTNQSFlfR1JGX1BIWXswLDF9X1NUQVRVUzEKYXMgZm9sbG93czoKCiAgYml0IDAgICAgIHNyYW1f
aW5pdF9kb25lCiAgYml0IDEgICAgIHBjc19wd3JfZW4gICAgIChyZXNldCB2YWx1ZSAxKQogIGJp
dCAyICAgICBwbWFfcHdyX2VuICAgICAocmVzZXQgdmFsdWUgMSkKICBiaXQgMyAgICAgbXBsbGFf
c3RhdGUKICBiaXRzIDU6NCAgcmVzZXJ2ZWQKICBiaXQgNiAgICAgbXBsbGJfc3RhdGUKClNvIHRo
ZSBsb3dlciBmb3VyIGJpdHMgYXJlIG5vdCBhbGwgUExMIHN0YXRlczogYml0cyAxIGFuZCAyIGFy
ZSBwb3dlcgpzd2l0Y2ggZW5hYmxlcywgYW5kIHRoZSBvbmx5IFBMTCBhbW9uZyB0aGVtIGlzIE1Q
TExBLCB3aGlsZSBNUExMQiBpcwpiaXQgNi4KCk9uIHRoaXMgYm9hcmQgTVBMTEEgaXMgb2ZmIGV2
ZW4gb24gYSB3b3JraW5nIGxpbmsuIFdpdGggdGhpcyBwYXRjaApyZXZlcnRlZCwgUEhZMF9TVEFU
VVMxIGFuZCBQSFkxX1NUQVRVUzEgYm90aCByZWFkIDB4NDcgb25jZSB0aGUgbGluawpoYXMgdHJh
aW5lZCBhdCA4IEdUL3MgeDQ6IFNSQU0gaW5pdGlhbGlzZWQsIE1QTExCIHJ1bm5pbmcsIE1QTExB
IG9mZi4KV2hlbiB0aGUgY2hlY2sgZmFpbHMgdGhleSByZWFkIDB4Nywgc28gbmVpdGhlciBQTEwg
aXMgcnVubmluZyB5ZXQgYXQKdGhhdCBwb2ludCwgYW5kIGNoZWNraW5nIGZvciBNUExMQiBpbnN0
ZWFkIHdvdWxkIGZhaWwgdG9vLgoKUmV2ZXJ0aW5nIG9ubHkgdGhpcyBwYXRjaCwgd2l0aCB0aGUg
cmVzdCBvZiB0aGUgc2VyaWVzIGFwcGxpZWQKKHJvY2tjaGlwLWRldmVsIGF0IGQ3NDM2MzQ2ZmMz
MSwgdjcuNC1yYzIpLCBicmluZ3MgUENJZTN4NCBhbmQgdGhlCk5WTWUgYmFjay4KCldoYXQgaXMg
dGhlIGNoZWNrIG1lYW50IHRvIGNhdGNoPyBJZiBpdCBpcyBQTEwgbG9jaywgd2hpY2ggYml0cywg
YW5kCmF0IHdoYXQgcG9pbnQsIHdvdWxkIGJlIHJpZ2h0IGZvciBhIGxpbmsgdGhhdCBydW5zIG9u
IE1QTExCPwpPdGhlcndpc2UsIHNyYW1faW5pdF9kb25lIChiaXQgMCkgYWxvbmUgbG9va3MgbGlr
ZSB0aGUgcmlnaHQgY29uZGl0aW9uCmhlcmUuCgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
