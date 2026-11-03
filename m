Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1306606A329
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 04:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=S51Qgh8k;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=cyS5S6oI;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=UBfBNvDu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Q8dyH0reL+RKDACUdWDvIC/bsYeJWA0aTgwpQPlJd9Y=; b=S51Qgh8kqNZb6fehJ4hzZCxwOg
	XjouZuCkc1jYt6bovSdH1ZaegFsmv71jodA3DVgkcDGK0jm8OjgkhTYsr1T/fwjGNmuo6Kj3HCwyL
	Pjg/H+7BNvIF/7KQI+ZgOErJrr0TdHmLbICQ76DsgCKjiA3pdObMKvdhZqOue1weVl8Mb2TMXwuzu
	8hhq8nZ/L0cMxrJKXLvrnSyW5GzGJ4cJrd8xaaTomAbdhFsVkXxSsQSwDZRABIVZx7NsZLsQ0J7S0
	Y6b+B4OQlIWCrvtXqW1ADiafZMSw2UBC/3pGRNuNPu9gSYoE+ocmPGj4c8ud6YKNffvRnRLCqiv3e
	WGTWGqGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO6SB-000000015Ld-0eeV;
	Tue, 03 Nov 2026 04:48:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO6S8-000000015KW-34nf
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 04:48:58 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A31eDq71434033
	for <linux-rockchip@lists.infradead.org>; Tue, 3 Nov 2026 04:48:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=QaMvQc7YPxqzERreS7uDmkIOc8TUZOr8mXc
	E/xhevoA=; b=cyS5S6oIf1Po/eJc0NRAJ+h+J0JEeZkHQEeiRELOGNXlBQCgMVn
	tsLQ/dynwsKN7YmfZkjHARE9RumS3C/rHEJO6866e9ykeTVdNDpYRJw6j2csUgL8
	jhCyteS8BBXZWbKXrlGLVH3DOVNtBMnRQwCxWqiaz50QU5jNvLpIJoX9w7ftdYSE
	HLvub43wxvNdXgHqt4xc3jd790ELVW6g9kolPcrllvfDzMQ8cwODPSFdEOOM94JL
	Forox06Pgt2W1Mm8tH6DCuz/h/kF5hOhPgGOFraxtRuU6zng3NsQTPBdzunxxsm/
	cXcqgBED7XSTf+Fogf5AYM5ZD5AXh9t4N+Q==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hq2achc70-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 03 Nov 2026 04:48:55 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93e92aad34aso722192485a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 20:48:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793681335; x=1794286135; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=QaMvQc7YPxqzERreS7uDmkIOc8TUZOr8mXcE/xhevoA=;
        b=UBfBNvDucw/ZShyi0lf5ZeMbQjWNasx7qn4gXqJxg2k9u/UxKMq6/LGzgn+tFkjBC7
         zujmiCISxke2E5aGqnVlF8s4R69iKVgxNFeN8bd4UHMvmIF4H76SDUPIV6udaHCCl8jE
         88JPSa5PopynLQmIsBTcbQ7xGlr02xjsGPBdVX/7D5oVblhbQxZBdbvZovPqd7weHqfY
         lpN3DlrvJ5x2JPOnYUFIEe20JaJnHpZTMKpaCPTbgqGtRtr0lD38j3sXQDctYk2elvwi
         ULhjNvLxd+fqD7zlHlsPuhloKwZq3F5g+qJdoCojZSriGHwq4D2YuCVSSZnhUL2YPvjW
         8Gtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793681335; x=1794286135;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QaMvQc7YPxqzERreS7uDmkIOc8TUZOr8mXcE/xhevoA=;
        b=PSE7kJCkDqQZ1C2Ab/fNSsIN0+mP8BQd4RMaij4yRn82fDJodFwzRytVZDdzhT5fqB
         T59ggvuf4alMHe8+TzL/j6jFHMoQwl1luBo62fKkO7BcQQ0rW1F2xOhD6APHBsFVB4hg
         NEIIDgO+33yDjYJj+fgounjf5xj45iEE5jz4v6GwGaN6GWCv622iwzDD4xmpCaPZ4BqS
         IBaMgUSm1mmZiUaftgXL1Aov9vlvsobvAUjQCwtxmQr7zspq5OFIOMVwTS6LEr5OZ+b1
         kMOpnJ3fzTs7z+LmsnArWu41PZrOreOV3DnPiIP45kr7FgJbupSH56C3LVdwLq7gG4ai
         cC+g==
X-Forwarded-Encrypted: i=1; AKwUvBwGWP9BNCI4PV1Di9cxssGg3ivf1MR7Uuzbi4sJ2V0Qlvq9AUNyupbAY9bZ+iISTUB2utax0ZseQUNXCmkLsQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z9mSF7oN4T84mBDkxtqjPTUz9+x4dt7Kg+vXNOdbGswpO1bOue7
	D6ejA4T+Wr1w5Vd13R4ykMqhbkP+pwA3fN8Urr7Qri3Uu+1aaBlxM/p63b5z/SG2qfImg5fgD4X
	FMnfPQfGyVW6lx1D2aVDBrNAcBhHDyWzJ3qEr9g7MaiPkbk+K8PEr3gnKTorV0LlTSOkkJM4Agb
	M=
X-Gm-Gg: AYBFou1/3k++9pg8R58psc0PRNDZJrop/QJGA1IxP0+HVXe0Vxe0PaaTYlC7xZwaqTS
	tz7zsZ+lgKQTwR9kbt+k/JYNqNZg1aFts0GzDl+IxsShUMOyrTwWv63FCldf8OcuHruZM0JLpJZ
	5otet84DROTWqK9EiaOBoPYdDgEuLQExN91QMuJcFY1rKmODk82T9Tc2Ocni3ya0V7ptr1BWrkU
	m6zS0uQEmRCTLMi/Ye9bJuqjubAkFNL8PmnQ5ANn+HO2PU9Fy4Drdu05Rht7Q/StWoomeNehM2X
	5Ty0ErPMK9vawKhf433Bjke26nCUg8tuPGalnf4b6vOXH0hWJgK463vG1O0OQhFPOJgWWG3WP7L
	GVWZG9cedI8GtaWTz4P/dUvU74VJ0Fpa+CEdSgzuaQibwx8uUWFUl+gRT1ygMjqyz3kv6HwgzYA
	Bg
X-Received: by 2002:a05:620a:3945:b0:93c:70da:e45e with SMTP id af79cd13be357-94421677245mr2452915485a.36.1793681334897;
        Mon, 02 Nov 2026 20:48:54 -0800 (PST)
X-Received: by 2002:a05:620a:3945:b0:93c:70da:e45e with SMTP id af79cd13be357-94421677245mr2452913185a.36.1793681334303;
        Mon, 02 Nov 2026 20:48:54 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:8b9e:7797:dd05:11cb])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b2a879fb29sm25685445e9.4.2026.11.02.20.48.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 20:48:53 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: rafael@kernel.org
Cc: Daniel Lezcano <daniel.lezcano@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Shuah Khan <shuah@kernel.org>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Lukasz Luba <lukasz.luba@arm.com>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kselftest@vger.kernel.org
Subject: [PATCH v5 0/6] powercap: Add generic hierarchy support and convert DTPM
Date: Tue,  3 Nov 2026 05:48:14 +0100
Message-ID: <cover.1793666444.git.daniel.lezcano@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=T4gZ3PKQ c=1 sm=1 tr=0 ts=6ae967b7 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=rJkE3RaqiGZ5pbrm-msn:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Lw0nehYz5hoo17msdR0A:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDAxOCBTYWx0ZWRfXz5lnHekgiv92
 w8MBEUS8/TBEtT5IY2KSKmeP5JAKHXQcyMlu6hy9AGmft2JK72YEqb6e4DxNYT879NlA7C6YgDw
 nqHoEBW7UWZtU83kwWZiTTm8uiMym5DTl6o9zJm6qosq1QK6/jlOVJEGd1JnV18L2yHPHRQLQik
 vwgh6voqZ1u8tAi01TZ1LW4ZvCsrByngyXryVOi6hfG1h8dtzPgA0wKHg5hkDyT+LalB4MS5new
 G2DpdpkA040HcAb5lBuBoVmL7etXxN1kWRQz+99KjflIwNvquOoSJ76b+EbGPKdoVpTWvCMDpo4
 wttBPqSdAkesErbCbhCVgRCCKKdWDVqZK8lFpMKNZtM7U5zxjvekuLUpXFdjwrXhbCZl0zBpfK4
 ye5rPaYSjjp+8D5U4MfRkMA2Q6OHgZRZiRmNYr+BvmcIKnOYeSfM+cYVrQZphg3D/15a94gc0Yn
 wAWgtvkkiyXB68WB7Yw==
X-Proofpoint-GUID: xou_vZKrM7t8g49Z6r2jFfsvXrCYhjs9
X-Proofpoint-ORIG-GUID: xou_vZKrM7t8g49Z6r2jFfsvXrCYhjs9
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDAxOCBTYWx0ZWRfX4VOZh1c3pHLh
 XMWv9h6LsJolfXkrUqGCgE/AIJ9N8tsLPiS5+aqp7BCDWERKAhs1SKcNuKlbOBVKrOyuKlp8A5E
 aAf4PaYPGZd90oYoJboeNrpukOcmOSs=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_01,2026-11-02_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 spamscore=0 adultscore=0 malwarescore=0
 clxscore=1015 phishscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611030018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_204856_909982_3C865AF5 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Powercap controllers may expose trees of power zones, such as packages,
clusters and CPUs. This series adds generic helpers to duplicate a static
hierarchy description, create its zones through backend callbacks, and
destroy them in reverse order. Parents must precede their children in the
node array; the helpers validate that ordering rather than sorting nodes.

Drivers supporting multiple platforms can place each platform's hierarchy
description and node array in initdata. powercap_hierarchy_dup() creates a
working copy of the selected hierarchy and rebases its parent pointers.
All original descriptions, including those for unused platforms, can then
be reclaimed automatically with init memory. Names and backend-private
data are not duplicated and must remain valid for the working hierarchy.

The controller supplies creation and destruction callbacks to connect the
generic hierarchy traversal to its backend. The creation callback receives
the control type, node name, private data and parent zone, registers the
zone with its operations and constraints, and returns it to the helper.
The destruction callback unregisters it during rollback or teardown.

The API supports both fatal creation errors, which roll back previously
created zones, and optional nodes: a NULL callback result skips a node and
its descendants while allowing independent branches to be created.

The helpers were motivated by the SPEL work and also let DTPM share the
same hierarchy infrastructure:
https://lore.kernel.org/lkml/20260702-qcom_spel_driver_upstream-v3-0-434d50f0c5b0@oss.qualcomm.com/

A kselftest exercises static and duplicated hierarchies, skipped branches,
reuse after partial destruction, and rejection of repeated creation. Its
userspace script checks the 16 exported zones and selected attribute
values, then removes the module with a sysfs attribute descriptor open.

DTPM is converted to the generic helpers while preserving best-effort
creation when individual backends are unavailable. The CPU backend finds
an online sibling when a hierarchy's representative CPU is offline.
Entirely offline policies remain unavailable during initialization.

The RK3399 description is reduced to one CPU entry per cpufreq policy.
The old backend already suppressed duplicate registration; the extra
entries were redundant descriptions, not additional registered zones.
Finally, a shared Rockchip virtual descriptor and an RK3588 CPU hierarchy
are added. RK3588's three frequency domains are represented by cpu@0,
cpu@400 and cpu@600 below a virtual package node; no GPU zone is added
for RK3588 in this series.

Changes in v5 (since v4):
- Address Lukasz Luba's review of patch 4: reject a DTPM DT node with a
  NULL path before calling of_find_node_by_path(). Treat the missing path
  as an invalid descriptor (-EINVAL), rather than skipping it as an
  unavailable backend.
- Collect Reviewed-by tags from Lukasz Luba for patches 1, 3, 5 and 6.
- Keep the v7.3 base and the six-patch organization.

Changes in v4 (since v3):
- Rebase on v7.3.
- Address the selftest issues reported by Sashiko:
  - Add a kselftest config fragment requesting CONFIG_POWERCAP,
    CONFIG_MODULES and CONFIG_MODULE_UNLOAD, guard the module build with
    CONFIG_POWERCAP, and skip building when prerequisites or Module.symvers
    are missing instead of failing at modpost.
  - Resolve the kernel output directory and pass absolute O=,
    KBUILD_OUTPUT and module-output paths to Kbuild so cleanup works when
    a relative O= is inherited from the parent selftest make invocation.
  - Keep the statically initialized mutex in permanent module data so its
    lockdep key does not point into freed module init memory. Retain a
    separate init-only description for the hierarchy duplication test.
  - Return KSFT_SKIP when powercap sysfs support or the test module is
    unavailable, while retaining failures for actual module-load errors.

Changes in v3 (since v2):
- Rebase on v7.3-rc7.
- Add POWERCAP_HIERARCHY_INIT() and document static versus duplicated
  hierarchy ownership and lock initialization.
- Explain how duplication retains the selected platform hierarchy while
  init memory containing the original descriptions is reclaimed, and
  describe the controller callbacks and their arguments.
- Reject populated hierarchies with -EBUSY before invoking callbacks.
- Validate names and parent ordering before zone creation, including for
  static hierarchies; document the accepted hierarchy structure.
- Use explicit mutex locking, a signed reverse-loop index, and the clearer
  powercap_node.zone member name.
- Define NULL creation results as skipped branches and retain rollback for
  error pointers, preserving DTPM's best-effort behavior.
- Handle offline CPU representatives through an online policy sibling
  while holding the CPU hotplug read lock.
- Fix selftest output-directory handling and module cleanup, use
  powercap-owned zone allocations, and keep shell validation/counting in
  the main shell so failures propagate.
- Extend and document selftest coverage for static creation, skipped
  branches, hierarchy reuse, -EBUSY, and an open descriptor at teardown.
- Fix indentation, __initdata placement, unnamed setup callback arguments,
  and whitespace-only lines reported by checkpatch and patch application.
- Correct descriptions of redundant CPU entries and actual sysfs checks.

Earlier generic hierarchy API and selftest submission:
https://lore.kernel.org/all/20260806110159.69690-1-daniel.lezcano@oss.qualcomm.com/

Daniel Lezcano (6):
  powercap: Add generic zone hierarchy creation helpers
  selftests/powercap: Add powercap hierarchy creation API tests
  powercap: dtpm: Remove duplicate RK3399 CPU hierarchy nodes
  powercap: dtpm: Use generic powercap hierarchy helpers
  powercap: dtpm: Rename Rockchip virtual node descriptor
  powercap: dtpm: Add RK3588 hierarchy

 drivers/powercap/dtpm.c                       | 180 +++++-----
 drivers/powercap/dtpm_cpu.c                   |  62 +++-
 drivers/powercap/dtpm_devfreq.c               |  22 +-
 drivers/powercap/powercap_sys.c               | 204 ++++++++++++
 drivers/soc/rockchip/dtpm.c                   | 129 +++++--
 include/linux/dtpm.h                          |   6 +-
 include/linux/powercap.h                      | 205 ++++++++++++
 tools/testing/selftests/Makefile              |   1 +
 tools/testing/selftests/powercap/Kbuild       |   5 +
 tools/testing/selftests/powercap/Makefile     |  46 +++
 tools/testing/selftests/powercap/config       |   3 +
 .../selftests/powercap/powercap_hierarchy.c   | 314 ++++++++++++++++++
 .../selftests/powercap/powercap_hierarchy.sh  | 128 +++++++
 13 files changed, 1153 insertions(+), 152 deletions(-)
 create mode 100644 tools/testing/selftests/powercap/Kbuild
 create mode 100644 tools/testing/selftests/powercap/Makefile
 create mode 100644 tools/testing/selftests/powercap/config
 create mode 100644 tools/testing/selftests/powercap/powercap_hierarchy.c
 create mode 100755 tools/testing/selftests/powercap/powercap_hierarchy.sh


base-commit: c03c1a14507dfaf8b856c2608f9ac216021fc222
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
