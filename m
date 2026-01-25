Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 661EAE63CA4
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Jan 2026 18:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KGS2LeclzVfojImht1yTSRI14Pnd9FGTtXpUj5FvGKk=; b=rLDs3AMto2T53I
	pQeFVvPwW0pQgof6Oyn0pw7FguagZBDyUbKUzgo6rAuF3mLmN1vU/8gmJ2EwWOj1AU+1uKTK7NWMP
	Of16bOfmQvKQHgjnfwx2bTWIe7frddaRGIOqmo4yvXIA4QuwMZ4rkMN00EndraiLc5njgTwA9so/h
	4ppBwoawcxtlSpq/eV2iMyVEHfcKzxlAwRxw4t1CuxeSBQuq+hyyBTBh7Xl8mlT32RxMiIfG1FZCf
	eZBqPObGh+stzSGgOQQ+GRCKzZ4aFaRR9DRRFZ6ezy8R8PCjWbiUB/wgJzKyWuzLfC2AhFhYfIC9j
	J2IblZsTmJqoa+iCO/Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vk4bg-0000000BNc3-153p;
	Sun, 25 Jan 2026 18:13:04 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vk4bc-0000000BNbH-23lu
	for linux-rockchip@lists.infradead.org;
	Sun, 25 Jan 2026 18:13:02 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4801ea9bafdso15031335e9.3
        for <linux-rockchip@lists.infradead.org>; Sun, 25 Jan 2026 10:12:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769364778; x=1769969578; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+KgUVWqzHwJ5YQYyVy8QnSy/op2C+C4KeJA5ZeUsIuI=;
        b=Lz0YbyX3EJ3t2Xg5pOjdsUKBafVtzSnR52fsFf0mJsMNs+DNupOxHPHi/AUPWGdTvO
         ilCsoa/JUYIVE9KFm42zgkV5/xhUl2Rc8TkfNdhArshjBl7C7pV33cQKDQNPBD7QBkMU
         uZixd3c5YUXDGaPkjO7643rv6jMpYJ6DsaHnZ391bMdvLUajHl18kTEpP8OcjYzAaq92
         WV2w3EDlo8Ki49+nWKJ9laer57qxS4xEEDn7b9svCz0iVARtImTK+IsOK4iNg0tQuHS6
         VB7sobu8+n1X5LA2DhzfMwTI9HuGFiSeAqwrRurVKe5tEtBWM8NrckVkBkP4pZ/TehiH
         ehcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769364778; x=1769969578;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+KgUVWqzHwJ5YQYyVy8QnSy/op2C+C4KeJA5ZeUsIuI=;
        b=d1OLf4HjgyTadAXOfM4jF+hMRy0rYAl3z4O141bM5ebo00cKQldTTQWy6WT3HN1Z6o
         EF0XapQCqQiZOqCtt6zAXMnMwgN2R4+4U7/qHw1VXHQYH9b3II4bQ6NMlGtjQznSToFz
         6NWESqpcEBr2+UCnH4A9ifQZdSl/HVYB9YJgFBZ3WjMSvFZtZdP3NL6V5pI/kfm94svb
         qSbG2xj2qunC2MqvwMyGW59kdh1Tf/IFvUDbUoMsgawvLjvKOKNBgUo1K5yz8VGAZMPH
         xLr53xX/sTNOKnICqcKOarQo6wCYMcaE57+Djj3UaBjWozM/wMReL9kpFETV4D/6T7gx
         j12A==
X-Forwarded-Encrypted: i=1; AJvYcCVoj03k52ruWQYDEJV5iL6jr2KGI2GjOSgwLi6t3Z2vIilz+PyLaqgd7YoUYbEPoC1L6NqKAlnl1eklyPYEoA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy46gFlhxu5IdzDxz+q1D0UKL1wCKZlyyk7YwgiHLpmEV/jgciY
	SOtAS1B4gBFy4seq2Vpo2dSM3C0x4cWRusamN1cNinYDdGoXfDYEyvy/
X-Gm-Gg: AZuq6aJ2JM8GPWIsMY7yC0tQDX5ybzBazDDbAqT8gE2G/P3HwsTRADTCVO9NZEBiIkH
	tr/bGjA15PYYM6+ULHbCOQbaKXsV+QAQ4KYBomkLjV8TM7D1W5YZuDTHEbRCtIscf3xW7ogJsPK
	SwzGl66WLqd+8g4hAoc17rGY//Udia7yIU3lVrZXa9dXYOPids7LQHz8NWRSHZMLTk1RO/4qpGU
	xlM5NgJFQbqPA2QZ9bHi5r5KNLiQLSpHje6+CoYuEZn1EemcMr942AXI7CCiqUKlngdyCLZRr7E
	keLC4WZb9MR+FsGuymSdE2jAKYUyOGJicceSjfh/Uv251Lr293vUJ+lZlpIVWaYEU/e5CxgxT7b
	zTQBhUzQkiBGScT7ck50PTnzzds68Cpny4lUCfwBBdb9n4WfETFFvcnP2udGnflTDMpqIMkUNeZ
	E7bZIk0RjzXldmn9TEajrd66ZN31ip+q2RdHq1Kz6wQQ==
X-Received: by 2002:a05:600c:b96:b0:480:4d39:84b3 with SMTP id 5b1f17b1804b1-4805cd4090fmr36093185e9.6.1769364778155;
        Sun, 25 Jan 2026 10:12:58 -0800 (PST)
Received: from apple.sigmaris.info ([2a02:8010:6606:0:fd30:74ec:a5b0:107a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d8a5b67sm215302305e9.10.2026.01.25.10.12.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 10:12:57 -0800 (PST)
From: Hugh Cole-Baker <sigmaris@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Alexey Charkov <alchark@gmail.com>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] arm64: dts: rockchip: add pwm-fan for NanoPC-T6
Date: Sun, 25 Jan 2026 18:10:14 +0000
Message-ID: <20260125181228.25145-1-sigmaris@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260125_101300_547775_A760AF3A 
X-CRM114-Status: GOOD (  12.24  )
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

RnJpZW5kbHlFTEVDIG9mZmVycyBhbiBvcHRpb25hbCBoZWF0c2luayBhbmQgZmFuIGFkZG9uIFsx
XSBmb3IgdGhlCk5hbm9QQy1UNiBhbmQgVDYgTFRTLCB3aGljaCBwbHVncyBpbiB0byB0aGUgZmFu
IGNvbm5lY3RvciBvbiB0aGUgYm9hcmQKZHJpdmVuIGJ5IHB3bTEuIEFkZCB0aGUgZmFuIGFzIGFu
IGFjdGl2ZSBjb29saW5nIGRldmljZSBmb3IgdGhlIFNvQyBwYWNrYWdlLgpUaGUgUFdNIGR1dHkg
Y3ljbGUgdmFsdWVzIGFyZSB0YWtlbiBmcm9tIHRoZSB2ZW5kb3IncyBzb3VyY2UgWzJdLgoKU2ln
bmVkLW9mZi1ieTogSHVnaCBDb2xlLUJha2VyIDxzaWdtYXJpc0BnbWFpbC5jb20+CgpbMV06IGh0
dHBzOi8vd3d3LmZyaWVuZGx5ZWxlYy5jb20vaW5kZXgucGhwP3JvdXRlPXByb2R1Y3QvcHJvZHVj
dCZwcm9kdWN0X2lkPTMwNQpbMl06IGh0dHBzOi8vZ2l0aHViLmNvbS9mcmllbmRseWFybS9rZXJu
ZWwtcm9ja2NoaXAvYmxvYi80OTQ0NjAyNTQwYjYyZjVhYWQxMzlmZTYwMmE3NmNmN2MzMTc2MTI4
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW5hbm9waTYtcmV2MDEuZHRzI0w3
NS1MOTAKLS0tCkNoYW5nZXMgZnJvbSB2MjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgt
cm9ja2NoaXAvMjAyNTExMDkxOTIxMjguNzI1MjctMS1zaWdtYXJpc0BnbWFpbC5jb20vCiogU2V0
IHRyaXAgcG9pbnRzIHRvIDU1IGFuZCA2NcKwQyAoRHJhZ2FuKQoKQ2hhbmdlcyBmcm9tIHYxOiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI1MTAyNjE5NDg1OC45MjQ2
MS0xLXNpZ21hcmlzQGdtYWlsLmNvbS8KKiBhZGQgdGhlIGZhbiB0byB0aGUgYmFzZSBib2FyZCBk
dHNpIGluc3RlYWQgb2Ygb3ZlcmxheSAoSGVpa28pCioganVzdCB1c2UgMiB0cmlwIHBvaW50cyBm
b3Igd2FybSBhbmQgaG90IHRlbXBlcmF0dXJlcyAoRHJhZ2FuLCBBbGV4ZXkpCgogLi4uL2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMtdDYuZHRzaSAgIHwgMzkgKysrKysrKysrKysrKysr
KysrKwogMSBmaWxlIGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMtdDYuZHRzaSBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW5hbm9wYy10Ni5kdHNpCmluZGV4IDkwZTdmZTI1
NDQ5MWIuLjg0YjZiNTNmMDE2YWIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4LW5hbm9wYy10Ni5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4LW5hbm9wYy10Ni5kdHNpCkBAIC0xMSw2ICsxMSw3IEBACiAjaW5jbHVkZSA8
ZHQtYmluZGluZ3MvaW5wdXQvaW5wdXQuaD4KICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9waW5jdHJs
L3JvY2tjaGlwLmg+CiAjaW5jbHVkZSA8ZHQtYmluZGluZ3Mvc29jL3JvY2tjaGlwLHZvcDIuaD4K
KyNpbmNsdWRlIDxkdC1iaW5kaW5ncy90aGVybWFsL3RoZXJtYWwuaD4KICNpbmNsdWRlIDxkdC1i
aW5kaW5ncy91c2IvcGQuaD4KICNpbmNsdWRlICJyazM1ODguZHRzaSIKIApAQCAtODksNiArOTAs
MTQgQEAgdXNyX2xlZDogbGVkLTEgewogCQl9OwogCX07CiAKKwlmYW46IHB3bS1mYW4geworCQlj
b21wYXRpYmxlID0gInB3bS1mYW4iOworCQljb29saW5nLWxldmVscyA9IDwwIDM1IDY0IDEwMCAx
NTAgMjU1PjsKKwkJZmFuLXN1cHBseSA9IDwmdmNjNXYwX3N5cz47CisJCXB3bXMgPSA8JnB3bTEg
MCA1MDAwMCAwPjsKKwkJI2Nvb2xpbmctY2VsbHMgPSA8Mj47CisJfTsKKwogCXNvdW5kIHsKIAkJ
Y29tcGF0aWJsZSA9ICJzaW1wbGUtYXVkaW8tY2FyZCI7CiAJCXBpbmN0cmwtbmFtZXMgPSAiZGVm
YXVsdCI7CkBAIC01OTAsNiArNTk5LDM2IEBAICZpMnM2XzhjaCB7CiAJc3RhdHVzID0gIm9rYXki
OwogfTsKIAorJnBhY2thZ2VfdGhlcm1hbCB7CisJcG9sbGluZy1kZWxheSA9IDwxMDAwPjsKKwor
CXRyaXBzIHsKKwkJcGFja2FnZV93YXJtOiBwYWNrYWdlLXdhcm0geworCQkJdGVtcGVyYXR1cmUg
PSA8NTUwMDA+OworCQkJaHlzdGVyZXNpcyA9IDwyMDAwPjsKKwkJCXR5cGUgPSAiYWN0aXZlIjsK
KwkJfTsKKworCQlwYWNrYWdlX2hvdDogcGFja2FnZS1ob3QgeworCQkJdGVtcGVyYXR1cmUgPSA8
NjUwMDA+OworCQkJaHlzdGVyZXNpcyA9IDwyMDAwPjsKKwkJCXR5cGUgPSAiYWN0aXZlIjsKKwkJ
fTsKKwl9OworCisJY29vbGluZy1tYXBzIHsKKwkJbWFwMCB7CisJCQl0cmlwID0gPCZwYWNrYWdl
X3dhcm0+OworCQkJY29vbGluZy1kZXZpY2UgPSA8JmZhbiBUSEVSTUFMX05PX0xJTUlUIDE+Owor
CQl9OworCisJCW1hcDEgeworCQkJdHJpcCA9IDwmcGFja2FnZV9ob3Q+OworCQkJY29vbGluZy1k
ZXZpY2UgPSA8JmZhbiAyIFRIRVJNQUxfTk9fTElNSVQ+OworCQl9OworCX07Cit9OworCiAmcGNp
ZTJ4MWwwIHsKIAlyZXNldC1ncGlvcyA9IDwmZ3BpbzQgUktfUEIzIEdQSU9fQUNUSVZFX0hJR0g+
OwogCXZwY2llM3YzLXN1cHBseSA9IDwmdmNjXzN2M19wY2llMjA+OwotLSAKMi41MC4xIChBcHBs
ZSBHaXQtMTU1KQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
