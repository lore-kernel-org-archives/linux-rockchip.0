Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E8E606A31C
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 08:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=sew3Ahs3;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=R9WgBghp;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=tomeuvizoso-net.20260707.gappssmtp.com header.i=@tomeuvizoso-net.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=k9h80UJ8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FYJSFQoNfxx6hEmBvO/cxixGufPPQiQ9MAbxFEi4fVw=; b=sew3Ahs3E7tSUJTIzaK1rdU/PK
	jnd/GUJ8k9PsUAiLll+iB2RWWSD5+bSYZPo1TcVSOi4gEIdyU+xLedn1FOVydmHeNAouX9K/w6lIS
	kSmEcL5ZHB6FehuruvNhvcpjU57lTdeDPLYGOfWAzvDFoXo3Ceq15il2PhuVtkJnorA9aBFUX3W8r
	1/Jasl8e44PqqavM00/YNkkFW+EyMjugSuE1HbIg/kg3pEGnPFRg6g9IIZrl2gUNxKJ650iTGFm0R
	QB8Cd0rc4hGbjOCccPOoIODzDESI3CO3+AHQ5SeL3kb2ESVnHecopc3rwv/toYafKWJHal+58uZyU
	xbDwNfvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTbUz-00000008Fzv-209R;
	Wed, 18 Nov 2026 08:58:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTbUy-00000008FyB-0pyQ
	for linux-rockchip@bombadil.infradead.org;
	Wed, 18 Nov 2026 08:58:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=6Tn6QZlBwdQy7Z++SGRb83hx1wIds9xXetCQNFKWLw4=; b=R9WgBghpR9dp2Z5AsBthrGc1+A
	INvnLkoR0wUXmJxHcaq5oVOod+evHS0aN64VJYF3jZ6398BpUvd0Q+33JEHQuzFbkvq//pqg3NdVZ
	uaN3x2RUACWVJP9xHg5cGqkINREmbQvTiG821LkrFDVlVgPaNXL4MrCrF5O5v01Q6h+SfDHV9MSJK
	oV4NmBmPm+BAbWCzceDBvnmgEl09Oiuy4IlJTLlViMUg8tZCBseFppkvbbamLbc8WjWELfpHm4B0r
	LvkgPhq1SiT/mYfpykkfRulT+P3P/FuPVlEMmIHWPN49GS1uPaSFvq3WSN8yFTxUj6y1NM/qnUCOq
	DzG+BK6g==;
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTbUu-0000000ForF-2Iuv
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 08:58:34 +0000
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-930c0f9c1b1so85047385a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 00:58:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794992309; cv=none;
        d=google.com; s=arc-20260327;
        b=o5JIclMfsDlp5yUTZZxyS1B8hyqh8M1R4Hp+ZzPOLhRZDiP5at+St+R1zp7zGXVO3H
         T6+v5DnT+bLTDCx5vetH6I+ttvFAFh+Uz9ZuXWR+LoAygvGTAQA6TnEvade57N42ZOx1
         IPnROi9ABLt7jDm3sngSow4jCk6NXlo1FW06/R94EKXz/TeXizB6+VaqqVbFyahC7y7P
         SWqamRmxZQKfyFHDLnjrLao9JTrhqr4hobnJZtygRsia6pfh1m5OyjS6p3xHWF9JCd0H
         ERDALdJVkN01ZrAzrI+V4Ro/xOLAqBPAj2anKgLlXOe4+XqVOfgDNHIVKVdujQ+G7BCe
         v/Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6Tn6QZlBwdQy7Z++SGRb83hx1wIds9xXetCQNFKWLw4=;
        fh=c/P2y2gXd5R5Uiif1khwcPQ/Y0EjeU8HdE0nj6XaoKY=;
        b=OT/KL+prFwJi8d7je9IT5FvXFyG5L39lvamh+fouXxLFEZjewsKQKtfrCi4FtfQnss
         /zNfoDOeM82Bbfgk4jFhQ7zZiJqhYdajey5H1EKQJV4438PoLa9Xt54O44IGvQ/oCTw+
         EL829HQZ4pcBALJmZ5341G9Nju+RsbWvVIMHBlZUrXXh5DIoFW1x9VB+wbb9EPaig3ed
         oIb8yypuftFQJsGu3FZDZ1+MrlYyVFCw91vZi6UuBXyDOIyrLkz3/9tKyFyxfsAv85tt
         ne+Wy6l67O9kZ3xH4P3hIvSrcnq0jHNPyo6fw/MhYAD3IgasmqZYe2YClWnaIm5r0Iro
         6ABw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20260707.gappssmtp.com; s=20260707; t=1794992309; x=1795597109; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=6Tn6QZlBwdQy7Z++SGRb83hx1wIds9xXetCQNFKWLw4=;
        b=k9h80UJ8r9dhIeNyczgTyTDOh35mUyx5GgDOtwHCEr3qkopYMahVV8KWZQbsR7XeoE
         xEcuLZcYpvENI30KhW4tzjSvpMm4fSTnYrpBSKPdkTF/fgF/fhJVv+k9dKKyC/WNN85Z
         fPbiEzFE2bNBbVnkEUi47+mTIElryc6Ygh+HqeS0PLjeT02HVKyMOTijfrK2CaaybteA
         9X4R3DxEpvgenBxMqWtXMDGdBTsWOc0hGds4txhbNHRUYwBH60Tv/npuMA6Cppy7I0cA
         M51jf4rp4z4SqSHb9KTGY4Av5zJpMjJgjoUiJnVwdAN7V07Io3APK0ljTmyfcwzwppDs
         WTSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794992309; x=1795597109;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6Tn6QZlBwdQy7Z++SGRb83hx1wIds9xXetCQNFKWLw4=;
        b=HxALDWEn6SV+DN+vrEdlxvytChbpVnZKw7a2u5A48SHy+xPRt4nNAgogI2TdEQuNkT
         EPv10AKyfe0Ryx+kMPF/cmV/RtteE7y3/cenQP9idwiHyQvrB7UO0jUzxfx93SYCL0cq
         rjNqpvzIKJ2GzVu9rE7tXf3TR/Y9C7zuDJTkdUFkWbXv+7C2GQ34UuyrDyi60/0ZFAbR
         Y4bdKlPdCmhlGsvB/nlw7mVNY0f7r7P4YQpN2V+kmlTR3VGepPpxE8VwPFRUz9giLvPo
         Se0Qt7Z4cZ1TVFyvu1kerViK9zIoKT0XJkqpvwzU2ZGvJhp4U72lPO5fhsT5HWyH1jZt
         BJ0g==
X-Forwarded-Encrypted: i=1; AL+hErGp1mrM/Fdai6eKikl3OY3SlHc0D2U/52uDJ1Ha0b6Xxip12MSg6hH/pXe136RC2BCfGsZvdbijDH8E0QL1wg==@lists.infradead.org
X-Gm-Message-State: APuU4Z8cWMjLZRNyQNiTaJSPqBhZDD77KH4W+GRnroOVU02zTuv+G/L8
	v0WHEzqJS53fH2JwRcChg41s5glDgZG9bImDIKO9cx/ifm61I7GeB4hbSlGPB+0RJcuKhSay/AG
	fbbudTTkWJs68TRN3WQYwj97mYAho5PPe1C9pGkKONA==
X-Gm-Gg: AYBFou3JrDAjpUdsAJVWslTSQyAe3P2a3giXJ/fGVXAcO11cplSyb1VGNFWWHYUhqbw
	jGdYGbngNzNCxcCh5BGqlWIrukan5JLZxSuQp1VcV+aNRCcBCC6rdeYjDDHGrTJPk6DAI9C4wHp
	UhNBpqNczHEhnnGemutf88F5oZ10rtiKb9kkeC5xw2KeFKIspyV+HWdvdtR7qQUMpOm0cM95zh7
	7YpwVHDQztm0o/C4gZKpVb6f0CUhmc2czB53clLkiHoQ/TSGR1ODw8oPTNYvFKlRm2kHHNPB4/S
	4Mu1BkwTkDL1RUEhDIEpnEWzuyJLQnWgQ3DSsBWg3r6sbQqmWYm1DxrQQMBcwIQlCStnrOy/9k6
	9l8mC2OUK2IE7KFynoeiSUUnpY73unpi63W7rpllFYKK2+rbVXyfChAwEtUas4gLIq90a+tg/Rk
	NHRSNRUfG+VlAmhzpHUzU=
X-Received: by 2002:a05:620a:8086:b0:949:8119:6702 with SMTP id
 af79cd13be357-9499948e137mr355118385a.10.1794992308643; Wed, 18 Nov 2026
 00:58:28 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20260814022453.437-1-kernel@airkyi.com> <20260814022453.437-4-kernel@airkyi.com>
 <0e722f43-f08c-4636-bf3e-0dbe991bf6a0@baylibre.com> <72957827-fde8-4f4b-80a9-050d2f112316@rock-chips.com>
In-Reply-To: <72957827-fde8-4f4b-80a9-050d2f112316@rock-chips.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 18 Nov 2026 09:58:16 +0100
X-Gm-Features: AclHuK909rrF_qXtOz1nnqKagNl32jQy-qVgmtzBVAZUdG_WOuXBZplBLfDYBaA
Message-ID: <CAPsqS2QhAortoDOt9MBizTr4RCDhChr1xLF13NNTUYjyFMakhg@mail.gmail.com>
Subject: Re: [PATCH 3/4] accel/rocket: Fix the extra iommu_group_get call in rocket_job_handle_irq
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Daniel Drake <ddrake@baylibre.com>, Chaoyi Chen <kernel@airkyi.com>, 
	Oded Gabbay <ogabbay@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>, LKML <linux-kernel@vger.kernel.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	LAKML <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_085832_640462_CB62EE25 
X-CRM114-Status: GOOD (  24.56  )
X-Spam-Score: 0.0 (/)
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgQ2hhb3lpIGFuZCBEYW5pZWwsCgpPbiBXZWQsIE5vdiAxOCwgMjAyNiBhdCAzOjI54oCvQU0g
Q2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPgo+IEhpIERh
bmllbCwKPgo+IE9uIDExLzE4LzIwMjYgNTo1MyBBTSwgRGFuaWVsIERyYWtlIHdyb3RlOgo+ID4g
T24gMTQvMDgvMjAyNiAwMzoyNCwgQ2hhb3lpIENoZW4gd3JvdGU6Cj4gPj4gRnJvbTogQ2hhb3lp
IENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+ID4+Cj4gPj4gVGhlIHJvY2tldCBh
dHRhY2hlcyB0aGUgSU9NTVUgZ3JvdXAgaW4gcm9ja2V0X2pvYl9ydW4oKSBhbmQgZGV0YWNoZXMg
aXQKPiA+PiBpbiByb2NrZXRfam9iX2hhbmRsZV9pcnEoKS4gQ2FsbGluZyAgaW9tbXVfZ3JvdXBf
Z2V0KCkgaW4KPiA+PiByb2NrZXRfam9iX2hhbmRsZV9pcnEoKSBjYXVzZXMgdGhlIHJlZmVyZW5j
ZSBjb3VudCB0byBpbmNyZWFzZQo+ID4+IHVuZXhwZWN0ZWRseS4gQW5kIHRoaXMgY2F1c2VzIHJv
Y2tldF9jb3JlX2ZpbmkoKSB0byBmYWlsIHRvIHJlbGVhc2UgdGhlCj4gPj4gSU9NTVUgZ3JvdXAs
IGxlYWRpbmcgdG8gYSByZXNvdXJjZSBsZWFrLgo+ID4KPiA+Cj4gPiBXaGlsZSB0aGVyZSBpcyBh
IGxlYWsgaGVyZSwgSSB0aGluayBzYXNoaWtvIGNvcnJlY3QgaW4gc2F5aW5nIHRoaXMgY2hhbmdl
IHdvdWxkIGludHJvZHVjZSBhIGNyYXNoIGJlY2F1c2UgY29yZS0+aW9tbXVfZ3JvdXAgY2FuIGJl
IHNldCB0byBOVUxMIGJlZm9yZSB0aGlzIGNvZGVwYXRoIGlzIHJlYWNoZWQuICBUaGF0IG1pZ2h0
IGJlIGEgc2ltcGxlIGZpeC4KPiA+Cj4gPj4gRml4ZXM6IDY1OGViZWFjMzM1MSAoImFjY2VsL3Jv
Y2tldDogQWRkIElPQ1RMIGZvciBCTyBjcmVhdGlvbiIpCj4gPgo+ID4KPiA+IFdyb25nIGNvbW1p
dCBtZW50aW9uZWQgaGVyZS4KCkkgZml4ZWQgdGhpcyBvbmUgd2hlbiBhcHBseWluZy4KCj4gVGhh
bmtzIGZvciB5b3UgcmV2aWV3LiBUaGlzIGlzIGluZGVlZCBhIHByb2JsZW0uCgpJJ20gc29ycnkg
YnV0IEkgaGFkIGFscmVhZHkgYXBwbGllZCB0aGlzIHBhdGNoIHRvIGRybS1taXNjLWZpeGVzIGFu
ZApwdXNoZWQgd2hlbiBJIHJlYWQgdGhpcy4gSSBoYXZlIGxvb2tlZCBhdCBmaXhpbmcganVzdCB0
aGlzIGNyYXNoLCBidXQKaGF2ZSBkZWNpZGVkIGFnYWluc3QgaXQgYmVjYXVzZSB3ZSBhbnl3YXkg
Y3Jhc2ggaW4gZHJtX3NjaGVkIG9uIGNvcmUKdW5iaW5kIHdoZW5ldmVyIGEgY2xpZW50IGlzIGFj
dGl2ZSAobm8gbmVlZCB0byBoYXZlIGEgam9iIGluIGZsaWdodCksCmR1ZSB0byB0aGUgc2NoZWQg
ZW50aXRpZXMga2VlcGluZyBhIHJlZmVyZW5jZSB0byB0aGUgc3RhbGUgc2NoZWR1bGVyLgoKPiBB
bmQgaXQgaGFzIGJlZW4gYSBsb25nIHRpbWUgc2luY2UgSSBzZW50IHRoaXMgc2VyaWVzLiA6KQo+
Cj4gRHVyaW5nIHRoaXMgdGltZSwgSSBoYXZlIHNlZW4gYSBsb3Qgb2Ygc2ltaWxhciB3b3JrLiBG
b3IgZXhhbXBsZSwgd29yawo+IHNpbWlsYXIgdG8gcGF0Y2gxIGlzIGhlcmVbMF0uIEFuZCBzb21l
IG9mIHRoZSBpc3N1ZXMgbWVudGlvbmVkIGJ5Cj4gU2FzaGlrb2FyZSBhbHNvIGJlaW5nIGZpeGVk
IGJ5IGluLWZsaWdodCBwYXRjaGVzIGxpa2VbMV0uCgpDb3JlIHJlbW92YWwgbmVlZHMgdG8gYmUg
Zml4ZWQgYXMgYSB3aG9sZTogZGV0YWNoIHRoZSBvcGVuIGZpbGVzJwplbnRpdGllcyBmcm9tIHRo
ZSBzY2hlZHVsZXIgdGhhdCBnb2VzIGF3YXksIGNvbXBsZXRlIG9yIGNhbmNlbCB0aGUgam9iCmlu
IGZsaWdodCwgYW5kIHF1aWVzY2UgdGhlIGpvYiBpbnRlcnJ1cHQgYmVmb3JlIHRoZSByZXNvdXJj
ZXMgaXQgdXNlcwphcmUgcmVsZWFzZWQuCgo+IEknbSBub3Qgc3VyZSB3aGV0aGVyIEkgc2hvdWxk
IHNsb3cgZG93biB0aGUgc3VibWlzc2lvbiwgc2luY2UgaXQgc2VlbXMKPiBUb21ldSBpcyBxdWl0
ZSBidXN5IGFuZCBoYXNuJ3QgZ290dGVuIHRvIHNvbWUgb2YgdGhlIGJhY2tsb2dnZWQgcGF0Y2hl
cy4KCkknbSBzb3JyeSBhYm91dCB0aGUgYmlnIGJhY2tsb2cgb2YgcGF0Y2hlcy4gV2l0aCBIZWlr
byBhbmQgRGFuaWVsJ3MKaGVscCBJIGV4cGVjdCB0byBnZXQgaXQgY2xlYXJlZCBzb29uIGFuZCBi
ZSBtb3JlIHJlc3BvbnNpdmUuCgpSZWdhcmRzLAoKVG9tZXUKCj4gWzBdOiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9hbGwvMjAyNjA5MTUwNDExNTIuMTcyNTAxNC0xLXZ1bGFiQGlzY2FzLmFjLmNu
Lwo+IFsxXTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzE4NjY3YjJhZmRjYWFlMjE3ZmEx
MDM4ZjUzNDhhYjIzZWQ3NTZiZGMuMTc5NDYxNTMyMy5naXQuZ2FoaW5nQGdhaGluZ3dvby5jb20v
Cj4KPiAtLQo+IEJlc3QsCj4gQ2hhb3lpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
