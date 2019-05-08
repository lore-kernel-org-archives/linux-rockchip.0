From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v2] pstore/ram: Improve backward compatibility with older Chromebooks
Date: Wed,  8 May 2019 08:48:31 -0700
Message-ID: <20190508154832.241525-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Kees Cook <keescook@chromium.org>, Anton Vorontsov <anton@enomsg.org>
Cc: linux-rockchip@lists.infradead.org, briannorris@chromium.org, groeck@chromium.org, mka@chromium.org, Frank Rowand <frowand.list@gmail.com>, jwerner@chromium.org, Rob Herring <robh+dt@kernel.org>, Douglas Anderson <dianders@chromium.org>, Colin Cross <ccross@android.com>, Tony Luck <tony.luck@intel.com>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

When you try to run an upstream kernel on an old ARM-based Chromebook
you'll find that console-ramoops doesn't work.

Old ARM-based Chromebooks, before <https://crrev.com/c/439792>
("ramoops: support upstream {console,pmsg,ftrace}-size properties")
used to create a "ramoops" node at the top level that looked like:

/ {
  ramoops {
    compatible = "ramoops";
    reg = <...>;
    record-size = <...>;
    dump-oops;
  };
};

...and these Chromebooks assumed that the downstream kernel would make
console_size / pmsg_size match the record size.  The above ramoops
node was added by the firmware so it's not easy to make any changes.

Let's match the expected behavior, but only for those using the old
backward-compatible way of working where ramoops is right under the
root node.

NOTE: if there are some out-of-tree devices that had ramoops at the
top level, left everything but the record size as 0, and somehow
doesn't want this behavior, we can try to add more conditions here.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v2:
- s/mimicing/mimicking/ (Brian Norris)
- Slight rewording of the comment (Brian Norris)
- Check name rather than relying on of_node_is_root() (Frank Rowand)

 fs/pstore/ram.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index c5c685589e36..5195a3a3daec 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -669,6 +669,7 @@ static int ramoops_parse_dt(struct platform_device *pdev,
 			    struct ramoops_platform_data *pdata)
 {
 	struct device_node *of_node = pdev->dev.of_node;
+	struct device_node *parent_node;
 	struct resource *res;
 	u32 value;
 	int ret;
@@ -703,6 +704,26 @@ static int ramoops_parse_dt(struct platform_device *pdev,
 
 #undef parse_size
 
+	/*
+	 * Some old Chromebooks relied on the kernel setting the
+	 * console_size and pmsg_size to the record size since that's
+	 * what the downstream kernel did.  These same Chromebooks had
+	 * "ramoops" straight under the root node which isn't
+	 * according to the current upstream bindings (though it was
+	 * arguably acceptable under a prior version of the bindings).
+	 * Let's make those old Chromebooks work by detecting that
+	 * we're not a child of "reserved-memory" and mimicking the
+	 * expected behavior.
+	 */
+	parent_node = of_get_parent(of_node);
+	if (!of_node_name_eq(parent_node, "reserved-memory") &&
+	    !pdata->console_size && !pdata->ftrace_size &&
+	    !pdata->pmsg_size && !pdata->ecc_info.ecc_size) {
+		pdata->console_size = pdata->record_size;
+		pdata->pmsg_size = pdata->record_size;
+	}
+	of_node_put(parent_node);
+
 	return 0;
 }
 
-- 
2.21.0.1020.gf2820cf01a-goog
