Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11C2ECCD199
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 13:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4fGpvZa4uY0/vLmzTLytkGO77nHg5Iy3okkPTXpMZwU=; b=R2bwLFXouJ0Qfe
	AlGY9IQ2AOnEpR9q72e5qnvoMk+gmr3+Sn987pY90EH8kwTM672Z7UNAJOb5fgkTTAkqc/+zYDOUg
	XmoWPoL6TCVrM1gggcV2IvH3G4MUzW1BomNkhuicJzlvbvBYCFrAw3l+QSTEUXpW9DRr6po07N/SD
	QE/I8lZuPqdEDbzcQqKT1cCToKssuZjcA7fXC2j324RaacpgcmWBt3OIWnHheSCG3DGvG7I74pRdU
	FO3BuuXoeI0/LUqyP63YTi3JnynKLDTZZpUxkyFtYjCFEn+oqHBU4zW1WzTRYq7I+Kx3Hq7iH/OsY
	OKNuorHgGPyI6pzihN/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApgr-0000000DjVQ-3rnI;
	Mon, 20 Oct 2025 13:12:45 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApgo-0000000DjTj-3im6
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Oct 2025 13:12:44 +0000
Received: by mail-qk1-x72a.google.com with SMTP id af79cd13be357-883902b96c3so431071285a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Oct 2025 06:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760965961; x=1761570761; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aBUVnqjCVXD8SXpPqOAGtUoqSANNBD407KWXGjM/EKI=;
        b=Mcpj2Bt9IqGZ4KfdrQJNmfdIkgwdW7i91szkg+ipRjGvBsWafUqrphObRk/RJXvjri
         yxMnfPzTnKbhkLwIglMcm7ilM0fkz1Q9nF3ZVt1aPxqTW+iHSZKMT0KaX/QohIDGBkuH
         jm0An1K8N8GCwv1VCIWNre6cZ7SWL93fsO3MMeJ1ImIlnwyPkTL5E/a+BX5wnyo8wURN
         ljlw+GqOQ3X7xmCvUG+k4vpB6TBfVMLWcM7VtGxbOHwxaDSww6pDOl+RK67NkZz8FyQm
         eBrE6t6UQiUxW3dfo7O0EZlabXdG0aPQPK0Wt93J/fE4UQyGQ140sTxuTtJRJhga5THP
         tqGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760965961; x=1761570761;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aBUVnqjCVXD8SXpPqOAGtUoqSANNBD407KWXGjM/EKI=;
        b=LKbioECxbB/ematNSdJEUDri37LXfROXTJPw60bLSQqKQafkV8/421hlhujFbK8AU7
         llOIX0ozdvU2PFov/VLejJzwKuKvJ/4BQNd41vCixQD/DeQtSfK25lY7kDO3JiJXtfUD
         3CZ3sK9lzHcymXDIgYY6zo5iEEFpS9aX4OE3eA/KguS/27lG+WaYFkyX4sxPSceb+s1A
         zc3xGqBuGSDDVJypZpEgnowfrKrNWxreHzCNYxtt+2eeklGxnmJnRny6nhl0NXL9DRka
         72s5D3/woa68I8i+cjLYyD+/k2FQxCXk1XiTaY8C/WigUuYkncv4vACWb7YLir8vGy19
         G9ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXts5mkqBkVuR6B9tdvSRAM18og3XNAyZG+k3wkF4pmcTsfz8FG/eRuvZIWmghOxOTTMaXIcq/AnLuA1TIGlw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw77AvtfW1cIfUoV4wxCuVBTvKTdHd7vTvUiV6GuGhaaOOsbM3Z
	FgomnLWsFMducldOzXWz07fvDp26CpjzsEuherk6fL+7sKUXJBgJlpV++SKM/4LDOkuajr9lHN3
	r6BHJEFC7OCZI/8cILYM2EaIcNXc+PjhUyhEUg38GdQ==
X-Gm-Gg: ASbGncvxR0KaQVu9Joid6DowfxATlB9V2UVEz3ZmEVPwTgJZFmpk3bW/s0L7qVkOf/S
	og1ReA8Hgq0g/9owejpXJltiZY6Gv+7GQ5ifpmMJZA2IuxlfO/3HVijjCF2L/8St4UaZ62shRSK
	ennW5tD1VVvBuQF+D9YW1Cef3YtQ/nBgdBEaeRcc0UAjx8gTLxZBNsJ+GghI4zFjYftUg/ViaNj
	Jg7fKzLrQ6vIcyQSkgAWRqkSwKdyC1Rao4NovV0ejdVCdL0NU53d5vi8bpyg8SKaY92eyuL
X-Google-Smtp-Source: AGHT+IGWxr/3mKdNcivZNd9RwVP4zsx46rNQciik7IpucNlg5iFi2P+OzOHQU96V44rleOE6oK0rCgpnktT11M7Pzus=
X-Received: by 2002:a05:620a:4143:b0:864:ed9b:d4be with SMTP id
 af79cd13be357-890707fd73dmr1295127685a.47.1760965961487; Mon, 20 Oct 2025
 06:12:41 -0700 (PDT)
MIME-Version: 1.0
References: <1760924981-52339-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1760924981-52339-1-git-send-email-shawn.lin@rock-chips.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 20 Oct 2025 17:12:26 +0400
X-Gm-Features: AS18NWBpmljHOpflw5MLbHoh6UVu36WNpev9Zr5hHNHjSKmGAymIDUgODLvValE
Message-ID: <CABjd4Yx6AzeC2sn5UMa0sKG+BSV6tp8kYPQhyiE43jFQQxeB9Q@mail.gmail.com>
Subject: Re: [PATCH] mmc: sdhci-of-dwcmshc: Change DLL_STRBIN_TAPNUM_DEFAULT
 to 0x4
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Adrian Hunter <adrian.hunter@intel.com>, 
	linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_061242_924513_9E23F99C 
X-CRM114-Status: GOOD (  12.75  )
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

SGkgU2hhd24sCgpPbiBNb24sIE9jdCAyMCwgMjAyNSBhdCA1OjAw4oCvUE0gU2hhd24gTGluIDxz
aGF3bi5saW5Acm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4gc3RyYmluIHNpZ25hbCBkZWxheSB1
bmRlciAweDggY29uZmlndXJhdGlvbiBpcyBub3Qgc3RhYmxlIGFmdGVyIG1hc3NpdmUKPiB0ZXN0
LiBUaGUgcmVjb21tYW5kYXRpb24gb2YgaXQgc2hvdWxkIGJlIDB4NC4KPgo+IFNpZ25lZC1vZmYt
Ynk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+IC0tLQo+Cj4gIGRyaXZl
cnMvbW1jL2hvc3Qvc2RoY2ktb2YtZHdjbXNoYy5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKClRoYW5rcyBhIGxvdCBmb3IgdGhpcyBwYXRj
aCEgV2l0aCB0aGlzIGFwcGxpZWQsIEknbSBmaW5hbGx5IGdldHRpbmcKc3RhYmxlIGVNTUMgb3Bl
cmF0aW9uIG9uIGEgVG91Y2hGbHkgQ1gzNTc2QU4gYm9hcmQgKGJhc2VkIG9uIHRoZQpSb2NrY2hp
cCBSSzM1NzYpIEknbSBjdXJyZW50bHkgd29ya2luZyBvbi4gTm90ZSB0aGF0IEkndmUgYWxzbyBh
cHBsaWVkClNlYmFzdGlhbidzIENRRSBwYXRjaGVzIFsxXSwgYnV0IHRoZSBjb250cm9sbGVyIHN0
aWxsIGtlcHQgaGFuZ2luZyB1cAp3aXRob3V0IHlvdXIgcGF0Y2ggYXBwbGllZCBpbiBhZGRpdGlv
bi4gSFM0MDAgYW5kIENRRSBzZWVtIHRvIHdvcmsKd2VsbCBub3cuCgpNeSBlTU1DIG1vZHVsZSBp
ZGVudGlmaWVzIGl0c2VsZiBhcyBmb2xsb3dzOgpuYW1lOlNDQTMyRwptYW5maWQ6MHgwMDAwZGYK
aHdyZXY6MHgwCmZ3cmV2OjB4MTAwMDUwNTE0MDAyYjMwMApvZW1pZDoweDAxMTgKcmV2OjB4OApj
bWRxX2VuOjEKClNvLApUZXN0ZWQtYnk6IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNv
bT4KCkJlc3QgcmVnYXJkcywKQWxleGV5CgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGlu
dXgtcm9ja2NoaXAvMjAyNTEwMTQtcm9ja2NoaXAtZW1tYy1jcWUtc3VwcG9ydC12MS0wLTkxOGYw
M2RlMGNiMUBjb2xsYWJvcmEuY29tLwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
