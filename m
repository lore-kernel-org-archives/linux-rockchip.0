Return-Path: <SRS0=AwuO=E7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34C80C56201
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:50:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AB62F206D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:50:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="yvWu4Xlo";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFlrcIat"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AB62F206D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=otTlyKfTcHqyJ5Cz8p2lYSwvIgZ0B+9P5Jf32OzHsvw=; b=yvWu4XloDvcqGpdRaCZJHdaTW2
	eOUAiLIPV/WMk115c4LJaFN5BFyAUaC3qRBwTjCKnhHQx0TgzKL0SNPvyEH3EgO/slHG7FNgt6wy3
	5JEFQAGhYqPzXybEfHd7xV8YbDOlyLAjjVr4Zyo0R2SUWEbpUxXCyCAXvS9558pcijytiX/ztQetz
	ykO/YJzCH27r8LassTlM01QritNuoZLUUBD2ryI2w0Zl4f5DmJsCiu3iMmkSGfu+t/sWT6K5Ip+vT
	TqAtszVjgjAn7wbBzE3MEeXyZQiTVrUBT035boB+CZCVE5h+wNyVPWx0BykDN+pcTb/H5sMc5xZQe
	Yjlkj5Lg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khxzd-0007z3-TZ; Wed, 25 Nov 2020 16:50:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khxvT-00069S-9w; Wed, 25 Nov 2020 16:45:52 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8588E21D7F;
 Wed, 25 Nov 2020 16:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606322750;
 bh=68bJ8rSvPKEOquLrHU6PV1GQ5+jCM3ciFXGFU+bh9Bk=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=KFlrcIatgL0kXEZArSXaPAysEnZ03VUxlj3MjPv8qI2o7EzvezkyNOBYX2J7ftYAL
 QGX4PshwKmY1fQ3uN+tQ2/9mz4rd9KX3MZ6MJJKYyvRiBWnAe7lPI14qkasmpLReoq
 ztg9SuV0MFaunIdMfVHS/pglHdz0PmYxL5bdzuB4=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Support Opensource <support.opensource@diasemi.com>,
 Oder Chiou <oder_chiou@realtek.com>,
 Kevin Cernekee <cernekee@chromium.org>,
 Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Patrick Lai <plai@codeaurora.org>,
 Banajit Goswami <bgoswami@codeaurora.org>,
 Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v2 09/39] ASoC: qcom: mark OF related data as maybe unused
Date: Wed, 25 Nov 2020 17:44:22 +0100
Message-Id: <20201125164452.89239-10-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201125164452.89239-1-krzk@kernel.org>
References: <20201125164452.89239-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201125_114551_547702_C2CCB0BC 
X-CRM114-Status: GOOD (  16.22  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhlIGRyaXZlciBjYW4gYmUgY29tcGlsZSB0ZXN0ZWQgd2l0aCAhQ09ORklHX09GIG1ha2luZyBj
ZXJ0YWluIGRhdGEKdW51c2VkOgoKICBzb3VuZC9zb2MvcWNvbS9scGFzcy1hcHE4MDE2LmM6Mjk0
OjM0OiB3YXJuaW5nOiDigJhhcHE4MDE2X2xwYXNzX2NwdV9kZXZpY2VfaWTigJkgZGVmaW5lZCBi
dXQgbm90IHVzZWQgWy1XdW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KClNpZ25lZC1vZmYtYnk6IEty
enlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KLS0tCiBzb3VuZC9zb2MvcWNvbS9h
cHE4MDE2X3NiYy5jICAgfCAyICstCiBzb3VuZC9zb2MvcWNvbS9scGFzcy1hcHE4MDE2LmMgfCAy
ICstCiBzb3VuZC9zb2MvcWNvbS9scGFzcy1pcHE4MDZ4LmMgfCAyICstCiBzb3VuZC9zb2MvcWNv
bS9scGFzcy1zYzcxODAuYyAgfCAyICstCiA0IGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zb3VuZC9zb2MvcWNvbS9hcHE4MDE2X3Ni
Yy5jIGIvc291bmQvc29jL3Fjb20vYXBxODAxNl9zYmMuYwppbmRleCA1NzVlMmFlZmVmZTMuLjI3
MDk4NmIyZjEwMiAxMDA2NDQKLS0tIGEvc291bmQvc29jL3Fjb20vYXBxODAxNl9zYmMuYworKysg
Yi9zb3VuZC9zb2MvcWNvbS9hcHE4MDE2X3NiYy5jCkBAIC0xNjcsNyArMTY3LDcgQEAgc3RhdGlj
IGludCBhcHE4MDE2X3NiY19wbGF0Zm9ybV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQogCXJldHVybiBkZXZtX3NuZF9zb2NfcmVnaXN0ZXJfY2FyZCgmcGRldi0+ZGV2LCBjYXJk
KTsKIH0KIAotc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgYXBxODAxNl9zYmNfZGV2
aWNlX2lkW10gID0geworc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgYXBxODAxNl9z
YmNfZGV2aWNlX2lkW10gX19tYXliZV91bnVzZWQgPSB7CiAJeyAuY29tcGF0aWJsZSA9ICJxY29t
LGFwcTgwMTYtc2JjLXNuZGNhcmQiIH0sCiAJe30sCiB9OwpkaWZmIC0tZ2l0IGEvc291bmQvc29j
L3Fjb20vbHBhc3MtYXBxODAxNi5jIGIvc291bmQvc29jL3Fjb20vbHBhc3MtYXBxODAxNi5jCmlu
ZGV4IDBhZWRiM2EwYTc5OC4uODUwN2VmOGY2Njc5IDEwMDY0NAotLS0gYS9zb3VuZC9zb2MvcWNv
bS9scGFzcy1hcHE4MDE2LmMKKysrIGIvc291bmQvc29jL3Fjb20vbHBhc3MtYXBxODAxNi5jCkBA
IC0yOTEsNyArMjkxLDcgQEAgc3RhdGljIHN0cnVjdCBscGFzc192YXJpYW50IGFwcTgwMTZfZGF0
YSA9IHsKIAkuZnJlZV9kbWFfY2hhbm5lbAk9IGFwcTgwMTZfbHBhc3NfZnJlZV9kbWFfY2hhbm5l
bCwKIH07CiAKLXN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGFwcTgwMTZfbHBhc3Nf
Y3B1X2RldmljZV9pZFtdID0geworc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgYXBx
ODAxNl9scGFzc19jcHVfZGV2aWNlX2lkW10gX19tYXliZV91bnVzZWQgPSB7CiAJeyAuY29tcGF0
aWJsZSA9ICJxY29tLGxwYXNzLWNwdS1hcHE4MDE2IiwgLmRhdGEgPSAmYXBxODAxNl9kYXRhIH0s
CiAJe30KIH07CmRpZmYgLS1naXQgYS9zb3VuZC9zb2MvcWNvbS9scGFzcy1pcHE4MDZ4LmMgYi9z
b3VuZC9zb2MvcWNvbS9scGFzcy1pcHE4MDZ4LmMKaW5kZXggODMyYTkxNjE0ODRlLi45MmY5OGI0
ZGY0N2YgMTAwNjQ0Ci0tLSBhL3NvdW5kL3NvYy9xY29tL2xwYXNzLWlwcTgwNnguYworKysgYi9z
b3VuZC9zb2MvcWNvbS9scGFzcy1pcHE4MDZ4LmMKQEAgLTE2MSw3ICsxNjEsNyBAQCBzdGF0aWMg
c3RydWN0IGxwYXNzX3ZhcmlhbnQgaXBxODA2eF9kYXRhID0gewogCS5mcmVlX2RtYV9jaGFubmVs
CT0gaXBxODA2eF9scGFzc19mcmVlX2RtYV9jaGFubmVsLAogfTsKIAotc3RhdGljIGNvbnN0IHN0
cnVjdCBvZl9kZXZpY2VfaWQgaXBxODA2eF9scGFzc19jcHVfZGV2aWNlX2lkW10gPSB7CitzdGF0
aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBpcHE4MDZ4X2xwYXNzX2NwdV9kZXZpY2VfaWRb
XSBfX21heWJlX3VudXNlZCA9IHsKIAl7IC5jb21wYXRpYmxlID0gInFjb20sbHBhc3MtY3B1Iiwg
LmRhdGEgPSAmaXBxODA2eF9kYXRhIH0sCiAJe30KIH07CmRpZmYgLS1naXQgYS9zb3VuZC9zb2Mv
cWNvbS9scGFzcy1zYzcxODAuYyBiL3NvdW5kL3NvYy9xY29tL2xwYXNzLXNjNzE4MC5jCmluZGV4
IGJjOTk4ZDUwMTYwMC4uODZkZjhhN2M2NjM1IDEwMDY0NAotLS0gYS9zb3VuZC9zb2MvcWNvbS9s
cGFzcy1zYzcxODAuYworKysgYi9zb3VuZC9zb2MvcWNvbS9scGFzcy1zYzcxODAuYwpAQCAtMjg0
LDcgKzI4NCw3IEBAIHN0YXRpYyBzdHJ1Y3QgbHBhc3NfdmFyaWFudCBzYzcxODBfZGF0YSA9IHsK
IAkuZnJlZV9kbWFfY2hhbm5lbAk9IHNjNzE4MF9scGFzc19mcmVlX2RtYV9jaGFubmVsLAogfTsK
IAotc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgc2M3MTgwX2xwYXNzX2NwdV9kZXZp
Y2VfaWRbXSA9IHsKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHNjNzE4MF9scGFz
c19jcHVfZGV2aWNlX2lkW10gX19tYXliZV91bnVzZWQgPSB7CiAJey5jb21wYXRpYmxlID0gInFj
b20sc2M3MTgwLWxwYXNzLWNwdSIsIC5kYXRhID0gJnNjNzE4MF9kYXRhfSwKIAl7fQogfTsKLS0g
CjIuMjUuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
