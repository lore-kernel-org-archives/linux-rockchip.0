Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B77BC43458
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jun 2026 10:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ClnRwRdC4QZ7oL8CF9Wx52QelC1CkRm1PWSQvUbaEc8=; b=CCUHFmKIPZtA8eupdauMe2+1bf
	YAQ7PWZ5Q/vmP4v0Gq7uSfrMtAoNDMso9OtGMU99zWBGba/dRq5kl44OnMJZBdmKhzIByu+nyncIo
	Plhfwq+ugIaYRbHqA8BeQl0aPRuGYNXMsWXYxEoo820P0GO8H87EsrMECNn8OAQXkqhnF62qFz0Au
	KEaCTNoWJEANuHPLYLLuc2BhMu3Kggtzau4JIfCmdL6OJ3T6RXVYQ0SboP9nteexK4YrmfFnX3uqq
	ypnnyotLM65n6ssbh95XD1Wr3QqcVmz2qk9hB9wJzuEd1SnPR7xjXjJ88EUCJt5VAU4oUmPkq2zw+
	W06gs81Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we9If-0000000ELKe-0mAA;
	Mon, 29 Jun 2026 10:33:13 +0000
Received: from mail-vs1-xe2e.google.com ([2607:f8b0:4864:20::e2e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we9Ic-0000000ELJj-3Gy9
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jun 2026 10:33:11 +0000
Received: by mail-vs1-xe2e.google.com with SMTP id ada2fe7eead31-73503bd83b0so1733684137.0
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Jun 2026 03:33:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782729189; cv=none;
        d=google.com; s=arc-20260327;
        b=TsnGLQACmUmXn99EqdACQlZfmb2S68PpIbq9sFtQeiq+cBhPBRMMLZO18tYcSyTzol
         ecMHau4T/iOViTgbRCuTHRA1fqZFO8o50XpV0kUFyZnY12uJLbXAk4zV7Jx0nCHiDedH
         H3rGE/LWBkyjOYQQcihyJRGYBpwRk9KtrAM5joOCURWgjhIfms5aM7nr+2lIfXVwp8Rs
         EtaV6xpxUOpqM6TZNJpF+1bpOMRp8pCfQkI6WE+2mdLlJhmdUE6G7gt+DSFncI0K2/Jf
         QE7qfDmcaQtvgGxsZe8+LVj7PEx8uJJA3dAjt5DUYXFvZKptJN7RPc1ALpZHNn7LdGn4
         GS2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=bDqMGYnVhsBZQ1sXpSP8J8dhP+q5GofYCfFvca8AcKE=;
        fh=7SnhUOkt0Q6GsMeN0dXP6WsviMFNcOsfr6hV5GFaiaE=;
        b=Id1+qTi6KVxHFt7GQaqGlFWFTXzyl8alNsR3J3jo/+zF/H9qH0lEm4HY5WC1x5onGk
         jwbl/nxpPipQaRyM5FMJfM0GvSB0kZ5scUjCmmNV3VVQPfPiGdkjZKY5s4QmQaLAidZi
         O2lA6pEwlqFrDGYqA/acMwzTkV9MpQhKUnNYNGyXrEa9dy4TILSelq6LkgmjGcdZE87T
         K2nmcs1l2EiupeOgLSsoHiMhgsCSUVX0WoX/64FHmrzZlxuKYVpCCnONPZ9pAaYeRZOn
         t1B8H1wCm5SVqYdfNlSsJSPQsh+7CqkGUyeAEP0SGjvo7QMBkfD2njZsDst6fAGu+Q0j
         /5zg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782729189; x=1783333989; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bDqMGYnVhsBZQ1sXpSP8J8dhP+q5GofYCfFvca8AcKE=;
        b=eJIJ+1kvNnUzuTcQLrDB/d6QrrKdrfjT6Lna2OuldQvTH16CWglmAr3AGzIXHjyeg4
         gqc7UK/hBIfCWZ3k70irnYzZ/4ZZNG2wdVPCurFYAY4znofTlgS3Akqx7NAPde56oLou
         Mp6+OkwU3TGEnShA6HDPoq3ZM3ukDTe3PGQcInvq6mz8cWnFHBFHY90ZbpenFAFzX9J2
         QVg7/Fi+JHoK4eA4QvYGbzoIZujDB4h7BQbC2iBdse8M6R494MopOMHCsf6QD/gUaxAQ
         cpbohn43fsdnEBhJIzmHc9bXNViWDHQ7CCOq0smxdIKWvSU0WkC/xwEHBT6pnxvNxOyx
         5KoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782729189; x=1783333989;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bDqMGYnVhsBZQ1sXpSP8J8dhP+q5GofYCfFvca8AcKE=;
        b=dB5DhyPPnptjetB1A5NRs8A+ivx+X3jVDwtdAlwcSrYqFNL8nEHMgLidMlWjOw9wMK
         /yXfmY97HkThIzUDRkOJO2ggUhJr4xOgN8zzXN4aiBIsAdnYUFkM+WT3HSjBalmOnL/5
         BPpo63Z1CucJ/awZ9xe8mRl3UL/LsTjZ01J/8Ux6v3wKlwABj6Edu+lKmbfOZfy53L+8
         uGNu0Nr40Q4xMusjT0QyJ9bEc0Ke2QsNeRGzcgnyLMwLXYTTj4izA48udwLVB70WtRMX
         hCi5o0WG4DB4cKvBTkQiv9Qednn8oDbgcNPK6PyU42VkOP8jyxwxy5bBWATAYIg6qE5P
         AkUQ==
X-Gm-Message-State: AOJu0YwaFZXsBTI0Ofazk7yfXuaI7xocuU1obRmhgemmw3EmAflzkcbv
	56UqCsYZO8Q12Jx62AmeXQYLabjODKkAVfpl9fDRSEIzjOgGZFe3eL2HwK0Ull4rHfC8DF8i0to
	3aTIn7eIH6C3+dFh5ljP1hu68xPsmwOvZih9gq8Tz7Q==
X-Gm-Gg: AfdE7ckfu3M5OeVOTj3XcuB/JG5LjojVkExLQ2Ky37dhlILufiqle9SjWwR9kwXx7k6
	7EGlDI5VJI78eyD9Scrn79uB4dQEN7NwScVBOhrL+nVHz2fnHRP5zKKmKjug4iK7kqgm4NgXnFe
	Cp3YK1rGJx6fdbx+nr32ZTa+WcGik0I6+m6lKD/AFtGm7ygvFRAuQQdCVL1TQOUXH5F0Y3ZaGTt
	TbvF0Trx/m9z8M7RHgzjrKtVvHY2otNxwy+FuXNzcAFUnuz/EAH2VKSLfkmPA6dCUZRnGprKYuG
	26uVV6NTXYflPJ1O23NC/is9N98eVA==
X-Received: by 2002:a05:6102:c10:b0:739:18ea:565f with SMTP id
 ada2fe7eead31-73918ea5a95mr618398137.21.1782729189290; Mon, 29 Jun 2026
 03:33:09 -0700 (PDT)
MIME-Version: 1.0
From: Juan Manuel <juanmanuellopezcarrillo@gmail.com>
Date: Mon, 29 Jun 2026 12:32:58 +0200
X-Gm-Features: AVVi8Ce8OnbSifc50sa7-2oatyxo8iNF2oRrQajOiWvO-Ge81MADTdXhbhnWuCg
Message-ID: <CA+c=wxUU-mS=fiX2gCK_NH4SQPPWMqK6yrRSBSwvGZDEVaRkOA@mail.gmail.com>
Subject: [PATCH 0/2] arm64: dts: rockchip: fix Li-Po overcharge on Powkiddy
 RGB10 Max 3 / X55
To: macromorgan@hotmail.com, heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="0000000000000f2dfe065561fca9"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_033310_867680_3EB464CE 
X-CRM114-Status: GOOD (  25.71  )
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
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--0000000000000f2dfe065561fca9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Chris, Heiko,

While bringing up a couple of Powkiddy RK3566 handhelds I ran into a
battery problem that turns out to be in the device trees, and it has
already cost me two packs, so I'd like to get it fixed for everyone.

Both battery nodes charge the cell above its own declared full voltage:

rk3566-powkiddy-rk2023.dtsi (inherited by the RGB10 Max 3):
constant-charge-voltage-max-microvolt =3D 4250000 (4.25 V), but
voltage-max-design-microvolt and the ocv-capacity-table-0 100% point
are both 4172000 (4.172 V).

rk3566-powkiddy-x55.dts: constant-charge-voltage-max-microvolt =3D
4300000 (4.30 V), but voltage-max-design-microvolt and the
ocv-capacity-table-0 100% point are both 4138000 (4.138 V).

So the charger drives each cell ~80=E2=80=93160 mV past its own OCV-100% po=
int
on every cycle. On a standard 4.2 V Li-Po that is an overcharge: it
raises the cell's internal resistance and kills the pack early. The
symptom is textbook =E2=80=94 the pack reads a normal voltage/SoC while on =
the
charger but collapses under load and shuts the device off the moment
it's unplugged. I lost two packs to this before tracing it to the DT;
capping the charge voltage at 4.2 V (verified at the rk817 CHRG_OUT
register) stopped the damage, and a third, already-degraded pack
stabilised.

Patch 1 also corrects the RGB10 Max 3 design capacity: it ships a 4000
mAh cell but inherits the 3151 mAh value from rk2023.dtsi. I did this
as a per-board override so I don't touch the shared profile, which may
well be correct for the RGB30 and other rk2023 users.

One thing worth a look on your side: the shared
rk3566-powkiddy-rk2023.dtsi default itself (4.25 V against a 4.172 V
OCV-100% point) looks like it would overcharge any device using it,
not just the RGB10 Max 3 =E2=80=94 but I only have the two units above to t=
est
on, so I've kept the fix scoped to what I can verify.

Thanks a lot for all the handheld DT work; none of these devices would
run mainline without it.

Juan Manuel Lopez Carrillo

--0000000000000f2dfe065561fca9
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-arm64-dts-rockchip-powkiddy-rgb10max3-fix-battery-pr.patch"
Content-Disposition: attachment; 
	filename="0001-arm64-dts-rockchip-powkiddy-rgb10max3-fix-battery-pr.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_mqz2w1d90>
X-Attachment-Id: f_mqz2w1d90

RnJvbSAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBKdWFuIE1hbnVlbCBMb3BleiBDYXJyaWxsbyA8anVhbm1hbnVl
bGxvcGV6Y2FycmlsbG9AZ21haWwuY29tPgpEYXRlOiBTdW4sIDI5IEp1biAyMDI2IDEyOjAwOjAw
ICswMjAwClN1YmplY3Q6IFtQQVRDSCAxLzJdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBwb3draWRk
eS1yZ2IxMG1heDM6IGZpeCBiYXR0ZXJ5CiBwcm9maWxlCgpUaGUgUG93a2lkZHkgUkdCMTAgTWF4
IDMgc2hpcHMgd2l0aCBhIDQwMDAgbUFoIHBhY2ssIGJ1dCBpdCBpbmhlcml0cyBpdHMKYmF0dGVy
eSBub2RlIGZyb20gcmszNTY2LXBvd2tpZGR5LXJrMjAyMy5kdHNpLCB3aGljaCBkZXNjcmliZXMg
YSAzMTUxIG1BaApjZWxsIGFuZCwgbW9yZSBpbXBvcnRhbnRseSwgc2V0cyBjb25zdGFudC1jaGFy
Z2Utdm9sdGFnZS1tYXgtbWljcm92b2x0IHRvCjQyNTAwMDAgKDQuMjUgVikuCgpUaGF0IGNoYXJn
ZSB2b2x0YWdlIGlzIGFib3ZlIHRoaXMgcGFjaydzIGRlY2xhcmVkIGZ1bGwgdm9sdGFnZTogdGhl
CmluaGVyaXRlZCB2b2x0YWdlLW1heC1kZXNpZ24tbWljcm92b2x0IGFuZCB0aGUgb2N2LWNhcGFj
aXR5LXRhYmxlLTAgMTAwJQpwb2ludCBhcmUgYm90aCA0MTcyMDAwICg0LjE3MiBWKS4gVGhlIGNo
YXJnZXIgdGhlcmVmb3JlIGRyaXZlcyB0aGUgY2VsbAp+NzggbVYgcGFzdCBpdHMgb3duIGRlY2xh
cmVkICJmdWxsIiBvbiBldmVyeSBjeWNsZS4KCkZvciBhIHN0YW5kYXJkIDQuMiBWIExpLVBvIHRo
aXMgaXMgYW4gb3ZlcmNoYXJnZS4gSXQgcmFpc2VzIHRoZSBjZWxsJ3MKaW50ZXJuYWwgcmVzaXN0
YW5jZSBhbmQga2lsbHMgdGhlIHBhY2sgcHJlbWF0dXJlbHkuIFRoZSBmYWlsdXJlIG1vZGUgc2Vl
bgppbiB0aGUgZmllbGQgaXMgY2hhcmFjdGVyaXN0aWM6IHRoZSBwYWNrIHJlYWRzIGEgcGxhdXNp
YmxlIHZvbHRhZ2UvU29DCndoaWxlIG9uIHRoZSBjaGFyZ2VyIGJ1dCBjb2xsYXBzZXMgdW5kZXIg
bG9hZCAoYW5kIHNodXRzIHRoZSBkZXZpY2Ugb2ZmKQphcyBzb29uIGFzIGl0IGlzIHVucGx1Z2dl
ZC4gVHdvIHBhY2tzIHdlcmUgbG9zdCB0aGlzIHdheSBiZWZvcmUgdGhlIGNhdXNlCndhcyB0cmFj
ZWQgdG8gdGhlIERULgoKT3ZlcnJpZGUgdGhlIG5vZGUgZm9yIHRoaXMgYm9hcmQgd2l0aCB0aGUg
Y29ycmVjdCA0MDAwIG1BaCBkZXNpZ24gY2FwYWNpdHkKYW5kIGEgc2FmZSA0LjIgViBjaGFyZ2Ug
Y2VpbGluZywgYXQvYmVsb3cgdGhlIGNlbGwgZGVzaWduIG1heCBhbmQgdGhlCk9DVi0xMDAlIHBv
aW50LiBUaGUgY2hhcmdlIGN1cnJlbnQgbGltaXQgKDIgQSA9IDAuNUMpIGFuZCB0aGUgT0NWIGN1
cnZlCmFyZSBsZWZ0IHVuY2hhbmdlZC4KClNpZ25lZC1vZmYtYnk6IEp1YW4gTWFudWVsIExvcGV6
IENhcnJpbGxvIDxqdWFubWFudWVsbG9wZXpjYXJyaWxsb0BnbWFpbC5jb20+Ci0tLQogYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtcG93a2lkZHktcmdiMTBtYXgzLmR0cyB8IDUg
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1wb3draWRkeS1yZ2IxMG1heDMuZHRzIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtcG93a2lkZHktcmdiMTBtYXgzLmR0
cwotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1wb3draWRkeS1yZ2Ix
MG1heDMuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LXBvd2tp
ZGR5LXJnYjEwbWF4My5kdHMKQEAgLTEyLDYgKzEyLDExIEBACiAJY29tcGF0aWJsZSA9ICJwb3dr
aWRkeSxyZ2IxMG1heDMiLCAicm9ja2NoaXAscmszNTY2IjsKIH07CgorJmJhdHRlcnkgeworCWNo
YXJnZS1mdWxsLWRlc2lnbi1taWNyb2FtcC1ob3VycyA9IDw0MDAwMDAwPjsKKwljb25zdGFudC1j
aGFyZ2Utdm9sdGFnZS1tYXgtbWljcm92b2x0ID0gPDQyMDAwMDA+OworfTsKKwogJmJsdWV0b290
aCB7CiAJY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0bDg3MjNkcy1idCI7CiB9OwotLQoyLjQzLjAK
--0000000000000f2dfe065561fca9
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0002-arm64-dts-rockchip-powkiddy-x55-cap-battery-charge-4.patch"
Content-Disposition: attachment; 
	filename="0002-arm64-dts-rockchip-powkiddy-x55-cap-battery-charge-4.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_mqz2w1dh1>
X-Attachment-Id: f_mqz2w1dh1

RnJvbSAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBKdWFuIE1hbnVlbCBMb3BleiBDYXJyaWxsbyA8anVhbm1hbnVl
bGxvcGV6Y2FycmlsbG9AZ21haWwuY29tPgpEYXRlOiBTdW4sIDI5IEp1biAyMDI2IDEyOjA1OjAw
ICswMjAwClN1YmplY3Q6IFtQQVRDSCAyLzJdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBwb3draWRk
eS14NTU6IGNhcCBiYXR0ZXJ5IGNoYXJnZQogdm9sdGFnZSBhdCA0LjJWCgpUaGUgeDU1IGJhdHRl
cnkgbm9kZSBzZXRzIGNvbnN0YW50LWNoYXJnZS12b2x0YWdlLW1heC1taWNyb3ZvbHQgdG8KNDMw
MDAwMCAoNC4zMCBWKSwgYnV0IHRoZSBzYW1lIG5vZGUgZGVjbGFyZXMgdm9sdGFnZS1tYXgtZGVz
aWduLW1pY3Jvdm9sdAphbmQgYW4gb2N2LWNhcGFjaXR5LXRhYmxlLTAgMTAwJSBwb2ludCBvZiA0
MTM4MDAwICg0LjEzOCBWKS4gVGhlIGNoYXJnZXIKdGhlcmVmb3JlIGRyaXZlcyB0aGUgcGFjayB+
MTYyIG1WIGFib3ZlIGl0cyBvd24gZGVjbGFyZWQgZnVsbCB2b2x0YWdlIG9uCmV2ZXJ5IGN5Y2xl
LgoKVGhpcyBvdmVyY2hhcmdlcyB0aGUgc3RhbmRhcmQgNC4yIFYgTGktUG8sIHJhaXNpbmcgaXRz
IGludGVybmFsIHJlc2lzdGFuY2UKYW5kIGtpbGxpbmcgaXQgZWFybHkgLSBpdCByZWFkcyBmaW5l
IG9uIHRoZSBjaGFyZ2VyIGJ1dCBjb2xsYXBzZXMgdW5kZXIKbG9hZCBvbmNlIHVucGx1Z2dlZC4g
Q2FwIHRoZSBjaGFyZ2Ugdm9sdGFnZSBhdCB0aGUgc3RhbmRhcmQsIHNhZmUgNC4yIFYuCkRlc2ln
biBjYXBhY2l0eSAoNDAwMCBtQWgpIGFuZCBjaGFyZ2UgY3VycmVudCAoMiBBKSBhcmUgYWxyZWFk
eSBjb3JyZWN0LgoKU2lnbmVkLW9mZi1ieTogSnVhbiBNYW51ZWwgTG9wZXogQ2FycmlsbG8gPGp1
YW5tYW51ZWxsb3BlemNhcnJpbGxvQGdtYWlsLmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2Ni1wb3draWRkeS14NTUuZHRzIHwgMiArLQogMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1NjYtcG93a2lkZHkteDU1LmR0cyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTY2LXBvd2tpZGR5LXg1NS5kdHMKLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1NjYtcG93a2lkZHkteDU1LmR0cworKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1wb3draWRkeS14NTUuZHRzCkBAIC03Nyw3ICs3Nyw3
IEBACiAJCWNoYXJnZS1mdWxsLWRlc2lnbi1taWNyb2FtcC1ob3VycyA9IDw0MDAwMDAwPjsKIAkJ
Y2hhcmdlLXRlcm0tY3VycmVudC1taWNyb2FtcCA9IDwzMDAwMDA+OwogCQljb25zdGFudC1jaGFy
Z2UtY3VycmVudC1tYXgtbWljcm9hbXAgPSA8MjAwMDAwMD47Ci0JCWNvbnN0YW50LWNoYXJnZS12
b2x0YWdlLW1heC1taWNyb3ZvbHQgPSA8NDMwMDAwMD47CisJCWNvbnN0YW50LWNoYXJnZS12b2x0
YWdlLW1heC1taWNyb3ZvbHQgPSA8NDIwMDAwMD47CiAJCWZhY3RvcnktaW50ZXJuYWwtcmVzaXN0
YW5jZS1taWNyby1vaG1zID0gPDkxMDAwPjsKIAkJdm9sdGFnZS1tYXgtZGVzaWduLW1pY3Jvdm9s
dCA9IDw0MTM4MDAwPjsKIAkJdm9sdGFnZS1taW4tZGVzaWduLW1pY3Jvdm9sdCA9IDwzNDAwMDAw
PjsKLS0KMi40My4wCg==
--0000000000000f2dfe065561fca9
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--0000000000000f2dfe065561fca9--

